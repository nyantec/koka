-----------------------------------------------------------------------------
-- Copyright 2012 Microsoft Corporation.
--
-- This is free software; you can redistribute it and/or modify it under the
-- terms of the Apache License, Version 2.0. A copy of the License can be
-- found in the file "license.txt" at the root of this distribution.
-----------------------------------------------------------------------------

module Common.System      ( getEnvPaths, getEnvVar
                          , searchPaths, searchPathsEx
                          , getProgramPath, getInstallDir

                          , FileTime, fileTime0, maxFileTimes
                          , fileTimeCompare, getFileTime
                          , getFileTimeOrCurrent, getCurrentTime
                          , copyTextFile, copyTextIfNewer
                          , copyTextIfNewerWith, copyTextFileWith
                          , copyBinaryFile, copyBinaryIfNewer
                          ) where

import Data.Char          ( toLower
                          , isSpace
                          )
import System.Environment ( getEnvironment
                          , getProgName
                          )
import System.Directory   ( doesFileExist
                          , doesDirectoryExist
                          , copyFile
                          , getCurrentDirectory
                          , getDirectoryContents
                          , createDirectoryIfMissing
                          , canonicalizePath
                          )

import qualified System.FilePath  as FilePath
import qualified Platform.Runtime as B ( copyBinaryFile )
import qualified Platform.Console as C ( getProgramPath )

import Common.Failure   ( raiseIO, catchIO )
import Common.File
import Platform.Filetime

-- | Compare two file modification times (uses 0 for non-existing files)
fileTimeCompare :: FilePath -> FilePath -> IO Ordering
fileTimeCompare fname1 fname2
  = do time1 <- getFileTime fname1 
       time2 <- getFileTime fname2
       return (compare time1 time2)

maxFileTimes :: [FileTime] -> FileTime
maxFileTimes
  = maximum . (fileTime0:)

copyTextFile :: FilePath -> FilePath -> IO ()
copyTextFile src dest
  = if (src == dest)
     then return ()
     else catchIO (do createDirectoryIfMissing True (takeDirectory dest)
                      copyFile src dest) 
            (error ("could not copy file " ++ show src ++ " to " ++ show dest))

copyTextFileWith :: FilePath -> FilePath -> (String -> String) -> IO ()
copyTextFileWith src dest transform
  = if (src == dest)
     then return ()
     else catchIO (do createDirectoryIfMissing True (takeDirectory dest)
                      content <- readFile src
                      writeFile dest (transform content)) 
            (error ("could not copy file " ++ show src ++ " to " ++ show dest))

copyBinaryFile :: FilePath -> FilePath -> IO ()
copyBinaryFile src dest
  = if (src == dest) 
     then return ()
     else catchIO (B.copyBinaryFile src dest) (\_ -> error ("could not copy file " ++ show src ++ " to " ++ show dest))

copyBinaryIfNewer :: Bool -> FilePath -> FilePath -> IO ()
copyBinaryIfNewer always srcName outName       
  = do ord <- if always then return GT else fileTimeCompare srcName outName
       if (ord == GT)
        then do copyBinaryFile srcName outName
        else do -- putStrLn $ "no copy for: " ++ srcName ++ " to " ++ outName
                return ()

copyTextIfNewer :: Bool -> FilePath -> FilePath -> IO ()
copyTextIfNewer always srcName outName       
  = do ord <- if always then return GT else fileTimeCompare srcName outName
       if (ord == GT)
        then do copyTextFile srcName outName
        else do return ()

copyTextIfNewerWith :: Bool -> FilePath -> FilePath -> (String -> String) -> IO ()
copyTextIfNewerWith always srcName outName transform       
  = do ord <- if always then return GT else fileTimeCompare srcName outName
       if (ord == GT)
        then do copyTextFileWith srcName outName transform
        else do return ()


getInstallDir :: IO FilePath
getInstallDir
  = do p <- getProgramPath
       let d  = takeDirectory p
           ds = splitDirectories d
           result = case reverse ds of
                      ("bin":es)   -> joinPaths (reverse es)
                      (_:"out":es) -> joinPaths (reverse es)
                      _            -> d
       -- trace ("install-dir: " ++ result ++ ": " ++ show ds) $
       return result

getProgramPath :: IO FilePath
getProgramPath
  = do p <- C.getProgramPath  -- works on windows
       if (not (null p)) 
        then return p
        else do name <- getProgName
                if (null name)
                 then return "main"
                 else if (any isPathSep name)
                  then return name
                  else do paths <- getEnvPaths "PATH"
                          mbp   <- searchPaths paths [] name  -- search along the PATH
                          case mbp of
                            Just fname -> return fname
                            Nothing    -> return name

---------------------------------------------------------------
-- file searching
----------------------------------------------------------------

searchPaths :: [FilePath] -> [String] -> String -> IO (Maybe (FilePath))
searchPaths path exts name
  = fmap (fmap (\(root,name) -> joinPath root name)) (searchPathsEx path exts name)

searchPathsEx :: [FilePath] -> [String] -> String -> IO (Maybe (FilePath,FilePath))
searchPathsEx path exts name
  = search (concatMap (\dir -> map (\n -> (dir,n)) nameext) ("":path))
  where
    search [] = return Nothing  -- notfound envname nameext path
    search ((dir,fname):xs) 
      = do{ let fullName = joinPath dir fname
          ; exist <- doesFileExist fullName
          ; if exist
             then return (Just (dir,fname))
             else search xs
          }

    nameext
      = (nname : map (nname++) exts) 

    nname 
      = joinPaths $ dropWhile (==".") $ splitDirectories name

getEnvPaths :: String -> IO [FilePath]
getEnvPaths name
  = do{ xs <- getEnvVar name
      ; return (splitSearchPath xs)
      }
  `catchIO` \err -> return []

getEnvVar :: String -> IO String
getEnvVar name
  = do env <- getEnvironment
       case lookup (map toLower name) (map (\(k,v) -> (map toLower k,v)) env) of
         Just val -> return val
         Nothing  -> return ""
