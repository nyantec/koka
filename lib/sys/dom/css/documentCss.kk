public module sys/dom/css/documentCss

// Interface DocumentCSS (generated by esidl 0.2.0).

import sys/dom/types

/* safe and unsafe conversion from all types including `any */
external inline maybeDocumentCss  : forall<a> (a) -> maybe<documentCss>
{ inline "(#1.toString()==='[object DocumentCSS]'?std_core.Just(#1):std_core.Nothing)" }
external inline toDocumentCss : forall<a> (a) -> exn documentCss
{ inline "(#1.toString()==='[object DocumentCSS]'?#1:std_core.error('toDocumentCss: cast failed'))" }


// DocumentCSS implements DocumentCSS (supplemental)
external inline getOverrideStyle : (this: documentCss, elt: element, pseudoElt: string) -> dom cssStyleDeclaration
{ inline "#1.getOverrideStyle(#2, #3)" }

