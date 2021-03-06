public module sys/dom/html/htmlCommandElement

// Interface HTMLCommandElement (generated by esidl 0.2.0).

import sys/dom/types

external inline createHtmlCommandElement : (document: document) -> dom htmlCommandElement
{ inline "#1.createElement('command')" }

/* safe and unsafe conversion from all types including `any */
external inline maybeHtmlCommandElement : forall<a> (a) -> maybe<htmlCommandElement>
{ inline "(#1.tagName==='COMMAND'?std_core.Just(#1):std_core.Nothing)" }
external inline toHtmlCommandElement : forall<a> (a) -> exn htmlCommandElement
{ inline "(#1.tagName==='COMMAND'?#1:std_core.error('toHtmlCommandElement: cast failed'))" }


// HTMLCommandElement implements HTMLCommandElement (supplemental)
external inline type_ : (this: htmlCommandElement) -> dom string
{ inline "#1.type" }
external inline type_ : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.type = #2)" }
external inline label : (this: htmlCommandElement) -> dom string
{ inline "#1.label" }
external inline label : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.label = #2)" }
external inline icon : (this: htmlCommandElement) -> dom string
{ inline "#1.icon" }
external inline icon : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.icon = #2)" }
external inline disabled : (this: htmlCommandElement) -> dom bool
{ inline "#1.disabled" }
external inline disabled : (this: htmlCommandElement, assigned: bool) -> dom ()
{ inline "(#1.disabled = #2)" }
external inline checked : (this: htmlCommandElement) -> dom bool
{ inline "#1.checked" }
external inline checked : (this: htmlCommandElement, assigned: bool) -> dom ()
{ inline "(#1.checked = #2)" }
external inline radiogroup : (this: htmlCommandElement) -> dom string
{ inline "#1.radiogroup" }
external inline radiogroup : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.radiogroup = #2)" }
// HTMLCommandElement extends HTMLElement
external inline htmlElement : (htmlCommandElement) -> htmlElement // upcasting to extended type
{ inline "#1" }
// HTMLCommandElement implements in extension HTMLElement (overloading)
external inline getElementsByClassName : (this: htmlCommandElement, classNames: string) -> dom nodeList
{ inline "#1.getElementsByClassName(#2)" }

external inline innerHtml : (this: htmlCommandElement) -> dom string
{ inline "#1.innerHTML" }
external inline innerHtml : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.innerHTML = #2)" }
external inline outerHtml : (this: htmlCommandElement) -> dom string
{ inline "#1.outerHTML" }
external inline outerHtml : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.outerHTML = #2)" }
external inline insertAdjacentHtml : (this: htmlCommandElement, position: string, text: string) -> dom ()
{ inline "#1.insertAdjacentHTML(#2, #3)" }

external inline id : (this: htmlCommandElement) -> dom string
{ inline "#1.id" }
external inline id : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.id = #2)" }
external inline title : (this: htmlCommandElement) -> dom string
{ inline "#1.title" }
external inline title : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.title = #2)" }
external inline lang : (this: htmlCommandElement) -> dom string
{ inline "#1.lang" }
external inline lang : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.lang = #2)" }
external inline dir : (this: htmlCommandElement) -> dom string
{ inline "#1.dir" }
external inline dir : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.dir = #2)" }
external inline className : (this: htmlCommandElement) -> dom string
{ inline "#1.className" }
external inline className : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.className = #2)" }
external inline classList : (this: htmlCommandElement) -> dom domTokenList
{ inline "#1.classList" }
external inline dataset : (this: htmlCommandElement) -> dom domStringMap
{ inline "#1.dataset" }
external inline itemScope : (this: htmlCommandElement) -> dom bool
{ inline "#1.itemScope" }
external inline itemScope : (this: htmlCommandElement, assigned: bool) -> dom ()
{ inline "(#1.itemScope = #2)" }
external inline itemType : (this: htmlCommandElement) -> dom string
{ inline "#1.itemType" }
external inline itemType : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.itemType = #2)" }
external inline itemId : (this: htmlCommandElement) -> dom string
{ inline "#1.itemId" }
external inline itemId : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.itemId = #2)" }
external inline itemRef : (this: htmlCommandElement) -> dom domSettableTokenList
{ inline "#1.itemRef" }
external inline itemRef : (this: htmlCommandElement, assigned: domSettableTokenList) -> dom ()
{ inline "(#1.itemRef = #2)" }
external inline itemProp : (this: htmlCommandElement) -> dom domSettableTokenList
{ inline "#1.itemProp" }
external inline itemProp : (this: htmlCommandElement, assigned: domSettableTokenList) -> dom ()
{ inline "(#1.itemProp = #2)" }
external inline properties : (this: htmlCommandElement) -> dom htmlPropertiesCollection
{ inline "#1.properties" }


external inline hidden : (this: htmlCommandElement) -> dom bool
{ inline "#1.hidden" }
external inline hidden : (this: htmlCommandElement, assigned: bool) -> dom ()
{ inline "(#1.hidden = #2)" }
external inline click : (this: htmlCommandElement) -> dom ()
{ inline "#1.click()" }

external inline tabIndex : (this: htmlCommandElement) -> dom int32
{ inline "#1.tabIndex" }
external inline tabIndex : (this: htmlCommandElement, assigned: int32) -> dom ()
{ inline "(#1.tabIndex = #2)" }
external inline focus : (this: htmlCommandElement) -> dom ()
{ inline "#1.focus()" }

external inline blur : (this: htmlCommandElement) -> dom ()
{ inline "#1.blur()" }

external inline accessKey : (this: htmlCommandElement) -> dom string
{ inline "#1.accessKey" }
external inline accessKey : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.accessKey = #2)" }
external inline accessKeyLabel : (this: htmlCommandElement) -> dom string
{ inline "#1.accessKeyLabel" }
external inline draggable : (this: htmlCommandElement) -> dom bool
{ inline "#1.draggable" }
external inline draggable : (this: htmlCommandElement, assigned: bool) -> dom ()
{ inline "(#1.draggable = #2)" }
external inline dropzone : (this: htmlCommandElement) -> dom domSettableTokenList
{ inline "#1.dropzone" }
external inline dropzone : (this: htmlCommandElement, assigned: domSettableTokenList) -> dom ()
{ inline "(#1.dropzone = #2)" }
external inline contentEditable : (this: htmlCommandElement) -> dom string
{ inline "#1.contentEditable" }
external inline contentEditable : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.contentEditable = #2)" }
external inline isContentEditable : (this: htmlCommandElement) -> dom bool
{ inline "#1.isContentEditable" }
external inline contextMenu : (this: htmlCommandElement) -> dom htmlMenuElement
{ inline "#1.contextMenu" }
external inline contextMenu : (this: htmlCommandElement, assigned: htmlMenuElement) -> dom ()
{ inline "(#1.contextMenu = #2)" }
external inline spellcheck : (this: htmlCommandElement) -> dom bool
{ inline "#1.spellcheck" }
external inline spellcheck : (this: htmlCommandElement, assigned: bool) -> dom ()
{ inline "(#1.spellcheck = #2)" }
external inline commandType : (this: htmlCommandElement) -> dom string
{ inline "#1.commandType" }
external inline label : (this: htmlCommandElement) -> dom string
{ inline "#1.label" }
external inline icon : (this: htmlCommandElement) -> dom string
{ inline "#1.icon" }
external inline disabled : (this: htmlCommandElement) -> dom bool
{ inline "#1.disabled" }
external inline checked : (this: htmlCommandElement) -> dom bool
{ inline "#1.checked" }
external inline style : (this: htmlCommandElement) -> dom cssStyleDeclaration
{ inline "#1.style" }
external inline onabort : (this: htmlCommandElement) -> dom (uiEvent -> dom ())
{ inline "#1.onabort" }
external inline onabort : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onabort = #2)" }
external inline onabort : forall<e> (this: htmlCommandElement, assigned: (uiEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onabort = #2)" }
external inline onblur : (this: htmlCommandElement) -> dom (focusEvent -> dom ())
{ inline "#1.onblur" }
external inline onblur : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onblur = #2)" }
external inline onblur : forall<e> (this: htmlCommandElement, assigned: (focusEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onblur = #2)" }
external inline oncanplay : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.oncanplay" }
external inline oncanplay : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oncanplay = #2)" }
external inline oncanplay : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oncanplay = #2)" }
external inline oncanplaythrough : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.oncanplaythrough" }
external inline oncanplaythrough : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oncanplaythrough = #2)" }
external inline oncanplaythrough : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oncanplaythrough = #2)" }
external inline onchange : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onchange" }
external inline onchange : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onchange = #2)" }
external inline onchange : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onchange = #2)" }
external inline onclick : (this: htmlCommandElement) -> dom (mouseEvent -> dom ())
{ inline "#1.onclick" }
external inline onclick : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onclick = #2)" }
external inline onclick : forall<e> (this: htmlCommandElement, assigned: (mouseEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onclick = #2)" }
external inline oncontextmenu : (this: htmlCommandElement) -> dom (mouseEvent -> dom ())
{ inline "#1.oncontextmenu" }
external inline oncontextmenu : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oncontextmenu = #2)" }
external inline oncontextmenu : forall<e> (this: htmlCommandElement, assigned: (mouseEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oncontextmenu = #2)" }
external inline oncuechange : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.oncuechange" }
external inline oncuechange : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oncuechange = #2)" }
external inline oncuechange : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oncuechange = #2)" }
external inline ondblclick : (this: htmlCommandElement) -> dom (mouseEvent -> dom ())
{ inline "#1.ondblclick" }
external inline ondblclick : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondblclick = #2)" }
external inline ondblclick : forall<e> (this: htmlCommandElement, assigned: (mouseEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondblclick = #2)" }
external inline ondrag : (this: htmlCommandElement) -> dom (dragEvent -> dom ())
{ inline "#1.ondrag" }
external inline ondrag : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondrag = #2)" }
external inline ondrag : forall<e> (this: htmlCommandElement, assigned: (dragEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondrag = #2)" }
external inline ondragend : (this: htmlCommandElement) -> dom (dragEvent -> dom ())
{ inline "#1.ondragend" }
external inline ondragend : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragend = #2)" }
external inline ondragend : forall<e> (this: htmlCommandElement, assigned: (dragEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragend = #2)" }
external inline ondragenter : (this: htmlCommandElement) -> dom (dragEvent -> dom ())
{ inline "#1.ondragenter" }
external inline ondragenter : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragenter = #2)" }
external inline ondragenter : forall<e> (this: htmlCommandElement, assigned: (dragEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragenter = #2)" }
external inline ondragleave : (this: htmlCommandElement) -> dom (dragEvent -> dom ())
{ inline "#1.ondragleave" }
external inline ondragleave : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragleave = #2)" }
external inline ondragleave : forall<e> (this: htmlCommandElement, assigned: (dragEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragleave = #2)" }
external inline ondragover : (this: htmlCommandElement) -> dom (dragEvent -> dom ())
{ inline "#1.ondragover" }
external inline ondragover : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragover = #2)" }
external inline ondragover : forall<e> (this: htmlCommandElement, assigned: (dragEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragover = #2)" }
external inline ondragstart : (this: htmlCommandElement) -> dom (dragEvent -> dom ())
{ inline "#1.ondragstart" }
external inline ondragstart : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragstart = #2)" }
external inline ondragstart : forall<e> (this: htmlCommandElement, assigned: (dragEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondragstart = #2)" }
external inline ondrop : (this: htmlCommandElement) -> dom (dragEvent -> dom ())
{ inline "#1.ondrop" }
external inline ondrop : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondrop = #2)" }
external inline ondrop : forall<e> (this: htmlCommandElement, assigned: (dragEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondrop = #2)" }
external inline ondurationchange : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.ondurationchange" }
external inline ondurationchange : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondurationchange = #2)" }
external inline ondurationchange : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ondurationchange = #2)" }
external inline onemptied : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onemptied" }
external inline onemptied : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onemptied = #2)" }
external inline onemptied : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onemptied = #2)" }
external inline onended : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onended" }
external inline onended : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onended = #2)" }
external inline onended : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onended = #2)" }
external inline onerror : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onerror" }
external inline onerror : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onerror = #2)" }
external inline onerror : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onerror = #2)" }
external inline onfocus : (this: htmlCommandElement) -> dom (focusEvent -> dom ())
{ inline "#1.onfocus" }
external inline onfocus : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onfocus = #2)" }
external inline onfocus : forall<e> (this: htmlCommandElement, assigned: (focusEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onfocus = #2)" }
external inline oninput : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.oninput" }
external inline oninput : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oninput = #2)" }
external inline oninput : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oninput = #2)" }
external inline oninvalid : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.oninvalid" }
external inline oninvalid : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oninvalid = #2)" }
external inline oninvalid : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.oninvalid = #2)" }
external inline onkeydown : (this: htmlCommandElement) -> dom (keyboardEvent -> dom ())
{ inline "#1.onkeydown" }
external inline onkeydown : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onkeydown = #2)" }
external inline onkeydown : forall<e> (this: htmlCommandElement, assigned: (keyboardEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onkeydown = #2)" }
external inline onkeypress : (this: htmlCommandElement) -> dom (keyboardEvent -> dom ())
{ inline "#1.onkeypress" }
external inline onkeypress : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onkeypress = #2)" }
external inline onkeypress : forall<e> (this: htmlCommandElement, assigned: (keyboardEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onkeypress = #2)" }
external inline onkeyup : (this: htmlCommandElement) -> dom (keyboardEvent -> dom ())
{ inline "#1.onkeyup" }
external inline onkeyup : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onkeyup = #2)" }
external inline onkeyup : forall<e> (this: htmlCommandElement, assigned: (keyboardEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onkeyup = #2)" }
external inline onload : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onload" }
external inline onload : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onload = #2)" }
external inline onload : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onload = #2)" }
external inline onloadeddata : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onloadeddata" }
external inline onloadeddata : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onloadeddata = #2)" }
external inline onloadeddata : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onloadeddata = #2)" }
external inline onloadedmetadata : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onloadedmetadata" }
external inline onloadedmetadata : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onloadedmetadata = #2)" }
external inline onloadedmetadata : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onloadedmetadata = #2)" }
external inline onloadstart : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onloadstart" }
external inline onloadstart : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onloadstart = #2)" }
external inline onloadstart : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onloadstart = #2)" }
external inline onmousedown : (this: htmlCommandElement) -> dom (mouseEvent -> dom ())
{ inline "#1.onmousedown" }
external inline onmousedown : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmousedown = #2)" }
external inline onmousedown : forall<e> (this: htmlCommandElement, assigned: (mouseEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmousedown = #2)" }
external inline onmousemove : (this: htmlCommandElement) -> dom (mouseEvent -> dom ())
{ inline "#1.onmousemove" }
external inline onmousemove : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmousemove = #2)" }
external inline onmousemove : forall<e> (this: htmlCommandElement, assigned: (mouseEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmousemove = #2)" }
external inline onmouseout : (this: htmlCommandElement) -> dom (mouseEvent -> dom ())
{ inline "#1.onmouseout" }
external inline onmouseout : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmouseout = #2)" }
external inline onmouseout : forall<e> (this: htmlCommandElement, assigned: (mouseEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmouseout = #2)" }
external inline onmouseover : (this: htmlCommandElement) -> dom (mouseEvent -> dom ())
{ inline "#1.onmouseover" }
external inline onmouseover : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmouseover = #2)" }
external inline onmouseover : forall<e> (this: htmlCommandElement, assigned: (mouseEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmouseover = #2)" }
external inline onmouseup : (this: htmlCommandElement) -> dom (mouseEvent -> dom ())
{ inline "#1.onmouseup" }
external inline onmouseup : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmouseup = #2)" }
external inline onmouseup : forall<e> (this: htmlCommandElement, assigned: (mouseEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmouseup = #2)" }
external inline onmousewheel : (this: htmlCommandElement) -> dom (wheelEvent -> dom ())
{ inline "#1.onmousewheel" }
external inline onmousewheel : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmousewheel = #2)" }
external inline onmousewheel : forall<e> (this: htmlCommandElement, assigned: (wheelEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onmousewheel = #2)" }
external inline onpause : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onpause" }
external inline onpause : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onpause = #2)" }
external inline onpause : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onpause = #2)" }
external inline onplay : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onplay" }
external inline onplay : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onplay = #2)" }
external inline onplay : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onplay = #2)" }
external inline onplaying : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onplaying" }
external inline onplaying : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onplaying = #2)" }
external inline onplaying : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onplaying = #2)" }
external inline onprogress : (this: htmlCommandElement) -> dom (progressEvent -> dom ())
{ inline "#1.onprogress" }
external inline onprogress : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onprogress = #2)" }
external inline onprogress : forall<e> (this: htmlCommandElement, assigned: (progressEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onprogress = #2)" }
external inline onratechange : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onratechange" }
external inline onratechange : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onratechange = #2)" }
external inline onratechange : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onratechange = #2)" }
external inline onreadystatechange : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onreadystatechange" }
external inline onreadystatechange : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onreadystatechange = #2)" }
external inline onreadystatechange : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onreadystatechange = #2)" }
external inline onreset : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onreset" }
external inline onreset : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onreset = #2)" }
external inline onreset : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onreset = #2)" }
external inline onscroll : (this: htmlCommandElement) -> dom (uiEvent -> dom ())
{ inline "#1.onscroll" }
external inline onscroll : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onscroll = #2)" }
external inline onscroll : forall<e> (this: htmlCommandElement, assigned: (uiEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onscroll = #2)" }
external inline onseeked : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onseeked" }
external inline onseeked : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onseeked = #2)" }
external inline onseeked : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onseeked = #2)" }
external inline onseeking : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onseeking" }
external inline onseeking : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onseeking = #2)" }
external inline onseeking : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onseeking = #2)" }
external inline onselect : (this: htmlCommandElement) -> dom (uiEvent -> dom ())
{ inline "#1.onselect" }
external inline onselect : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onselect = #2)" }
external inline onselect : forall<e> (this: htmlCommandElement, assigned: (uiEvent) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onselect = #2)" }
external inline onshow : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onshow" }
external inline onshow : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onshow = #2)" }
external inline onshow : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onshow = #2)" }
external inline onstalled : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onstalled" }
external inline onstalled : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onstalled = #2)" }
external inline onstalled : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onstalled = #2)" }
external inline onsubmit : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onsubmit" }
external inline onsubmit : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onsubmit = #2)" }
external inline onsubmit : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onsubmit = #2)" }
external inline onsuspend : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onsuspend" }
external inline onsuspend : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onsuspend = #2)" }
external inline onsuspend : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onsuspend = #2)" }
external inline ontimeupdate : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.ontimeupdate" }
external inline ontimeupdate : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ontimeupdate = #2)" }
external inline ontimeupdate : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.ontimeupdate = #2)" }
external inline onvolumechange : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onvolumechange" }
external inline onvolumechange : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onvolumechange = #2)" }
external inline onvolumechange : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onvolumechange = #2)" }
external inline onwaiting : (this: htmlCommandElement) -> dom (event -> dom ())
{ inline "#1.onwaiting" }
external inline onwaiting : forall<e> (this: htmlCommandElement, assigned: () -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onwaiting = #2)" }
external inline onwaiting : forall<e> (this: htmlCommandElement, assigned: (event) -> <dom|e> ()) -> <dom|e> ()
{ inline "(#1.onwaiting = #2)" }
// HTMLCommandElement implements in extension HTMLElement (overloading)
external inline offsetParent : (this: htmlCommandElement) -> dom element
{ inline "#1.offsetParent" }
external inline offsetTop : (this: htmlCommandElement) -> dom int32
{ inline "#1.offsetTop" }
external inline offsetLeft : (this: htmlCommandElement) -> dom int32
{ inline "#1.offsetLeft" }
external inline offsetWidth : (this: htmlCommandElement) -> dom int32
{ inline "#1.offsetWidth" }
external inline offsetHeight : (this: htmlCommandElement) -> dom int32
{ inline "#1.offsetHeight" }
// HTMLCommandElement extends Element
external inline element : (htmlCommandElement) -> element // upcasting to extended type
{ inline "#1" }
// HTMLCommandElement implements in extension Element (overloading)
external inline namespaceUri : (this: htmlCommandElement) -> dom string
{ inline "#1.namespaceURI" }
external inline prefix_ : (this: htmlCommandElement) -> dom string
{ inline "#1.prefix" }
external inline localName : (this: htmlCommandElement) -> dom string
{ inline "#1.localName" }
external inline tagName : (this: htmlCommandElement) -> dom string
{ inline "#1.tagName" }
external inline attributes : (this: htmlCommandElement) -> dom list<attr>
{ inline "std_core.alert('attributes: not implemented')" }

external inline getAttribute : (this: htmlCommandElement, qualifiedName: string) -> dom string
{ inline "#1.getAttribute(#2)" }

external inline getAttributeNs : (this: htmlCommandElement, namespace: string, localName: string) -> dom string
{ inline "#1.getAttributeNS(#2, #3)" }

external inline setAttribute : (this: htmlCommandElement, qualifiedName: string, value: string) -> dom ()
{ inline "#1.setAttribute(#2, #3)" }

external inline setAttributeNs : (this: htmlCommandElement, namespace: string, qualifiedName: string, value: string) -> dom ()
{ inline "#1.setAttributeNS(#2, #3, #4)" }

external inline removeAttribute : (this: htmlCommandElement, qualifiedName: string) -> dom ()
{ inline "#1.removeAttribute(#2)" }

external inline removeAttributeNs : (this: htmlCommandElement, namespace: string, localName: string) -> dom ()
{ inline "#1.removeAttributeNS(#2, #3)" }

external inline hasAttribute : (this: htmlCommandElement, qualifiedName: string) -> dom bool
{ inline "#1.hasAttribute(#2)" }

external inline hasAttributeNs : (this: htmlCommandElement, namespace: string, localName: string) -> dom bool
{ inline "#1.hasAttributeNS(#2, #3)" }

external inline getElementsByTagName : (this: htmlCommandElement, qualifiedName: string) -> dom nodeList
{ inline "#1.getElementsByTagName(#2)" }

external inline getElementsByTagNameNs : (this: htmlCommandElement, namespace: string, localName: string) -> dom nodeList
{ inline "#1.getElementsByTagNameNS(#2, #3)" }

external inline getElementsByClassName : (this: htmlCommandElement, classNames: string) -> dom nodeList
{ inline "#1.getElementsByClassName(#2)" }

external inline children : (this: htmlCommandElement) -> dom htmlCollection
{ inline "#1.children" }
external inline firstElementChild : (this: htmlCommandElement) -> dom element
{ inline "#1.firstElementChild" }
external inline lastElementChild : (this: htmlCommandElement) -> dom element
{ inline "#1.lastElementChild" }
external inline previousElementSibling : (this: htmlCommandElement) -> dom element
{ inline "#1.previousElementSibling" }
external inline nextElementSibling : (this: htmlCommandElement) -> dom element
{ inline "#1.nextElementSibling" }
external inline childElementCount : (this: htmlCommandElement) -> dom uint32
{ inline "#1.childElementCount" }
// HTMLCommandElement implements in extension Element (overloading)
external inline getClientRects : (this: htmlCommandElement) -> dom clientRectList
{ inline "#1.getClientRects()" }

external inline getBoundingClientRect : (this: htmlCommandElement) -> dom clientRect
{ inline "#1.getBoundingClientRect()" }

external inline scrollIntoView : (this: htmlCommandElement) -> dom ()
{ inline "#1.scrollIntoView()" }

external inline scrollIntoView : (this: htmlCommandElement, top: bool) -> dom ()
{ inline "#1.scrollIntoView(#2)" }

external inline scrollTop : (this: htmlCommandElement) -> dom int32
{ inline "#1.scrollTop" }
external inline scrollTop : (this: htmlCommandElement, assigned: int32) -> dom ()
{ inline "(#1.scrollTop = #2)" }
external inline scrollLeft : (this: htmlCommandElement) -> dom int32
{ inline "#1.scrollLeft" }
external inline scrollLeft : (this: htmlCommandElement, assigned: int32) -> dom ()
{ inline "(#1.scrollLeft = #2)" }
external inline scrollWidth : (this: htmlCommandElement) -> dom int32
{ inline "#1.scrollWidth" }
external inline scrollHeight : (this: htmlCommandElement) -> dom int32
{ inline "#1.scrollHeight" }
external inline clientTop : (this: htmlCommandElement) -> dom int32
{ inline "#1.clientTop" }
external inline clientLeft : (this: htmlCommandElement) -> dom int32
{ inline "#1.clientLeft" }
external inline clientWidth : (this: htmlCommandElement) -> dom int32
{ inline "#1.clientWidth" }
external inline clientHeight : (this: htmlCommandElement) -> dom int32
{ inline "#1.clientHeight" }
// HTMLCommandElement implements in extension NodeSelector (overloading)
external inline querySelector : (this: htmlCommandElement, selectors: string) -> dom element
{ inline "#1.querySelector(#2)" }

external inline querySelectorAll : (this: htmlCommandElement, selectors: string) -> dom nodeList
{ inline "#1.querySelectorAll(#2)" }

// HTMLCommandElement extends Node
external inline node : (htmlCommandElement) -> node // upcasting to extended type
{ inline "#1" }
// HTMLCommandElement implements in extension Node (overloading)
external inline nodeType : (this: htmlCommandElement) -> dom nodeType
{ inline "#1.nodeType" }
external inline nodeName : (this: htmlCommandElement) -> dom string
{ inline "#1.nodeName" }
external inline baseUri : (this: htmlCommandElement) -> dom string
{ inline "#1.baseURI" }
external inline ownerDocument : (this: htmlCommandElement) -> dom document
{ inline "#1.ownerDocument" }
external inline parentNode : (this: htmlCommandElement) -> dom node
{ inline "#1.parentNode" }
external inline parentElement : (this: htmlCommandElement) -> dom element
{ inline "#1.parentElement" }
external inline hasChildNodes : (this: htmlCommandElement) -> dom bool
{ inline "#1.hasChildNodes()" }

external inline childNodes : (this: htmlCommandElement) -> dom nodeList
{ inline "#1.childNodes" }
external inline firstChild : (this: htmlCommandElement) -> dom node
{ inline "#1.firstChild" }
external inline lastChild : (this: htmlCommandElement) -> dom node
{ inline "#1.lastChild" }
external inline previousSibling : (this: htmlCommandElement) -> dom node
{ inline "#1.previousSibling" }
external inline nextSibling : (this: htmlCommandElement) -> dom node
{ inline "#1.nextSibling" }
external inline compareDocumentPosition : (this: htmlCommandElement, other: node) -> dom uint16
{ inline "#1.compareDocumentPosition(#2)" }

external inline nodeValue : (this: htmlCommandElement) -> dom string
{ inline "#1.nodeValue" }
external inline nodeValue : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.nodeValue = #2)" }
external inline textContent : (this: htmlCommandElement) -> dom string
{ inline "#1.textContent" }
external inline textContent : (this: htmlCommandElement, assigned: string) -> dom ()
{ inline "(#1.textContent = #2)" }
external inline insertBefore : (this: htmlCommandElement, newChild: node, refChild: node) -> dom node
{ inline "#1.insertBefore(#2, #3)" }

external inline replaceChild : (this: htmlCommandElement, newChild: node, oldChild: node) -> dom node
{ inline "#1.replaceChild(#2, #3)" }

external inline removeChild : (this: htmlCommandElement, oldChild: node) -> dom node
{ inline "#1.removeChild(#2)" }

external inline appendChild : (this: htmlCommandElement, newChild: node) -> dom node
{ inline "#1.appendChild(#2)" }

external inline cloneNode : (this: htmlCommandElement, deep: bool) -> dom node
{ inline "#1.cloneNode(#2)" }

external inline isSameNode : (this: htmlCommandElement, node: node) -> dom bool
{ inline "#1.isSameNode(#2)" }

external inline isEqualNode : (this: htmlCommandElement, node: node) -> dom bool
{ inline "#1.isEqualNode(#2)" }

external inline lookupPrefix : (this: htmlCommandElement, namespace: string) -> dom string
{ inline "#1.lookupPrefix(#2)" }

external inline lookupNamespaceUri : (this: htmlCommandElement, prefix_: string) -> dom string
{ inline "#1.lookupNamespaceURI(#2)" }

external inline isDefaultNamespace : (this: htmlCommandElement, namespace: string) -> dom bool
{ inline "#1.isDefaultNamespace(#2)" }

// HTMLCommandElement extends EventTarget
external inline eventTarget : (htmlCommandElement) -> eventTarget // upcasting to extended type
{ inline "#1" }
// HTMLCommandElement implements in extension EventTarget (overloading)
external inline addEventListener : (this: htmlCommandElement, type_: string, listener: eventListener) -> dom ()
{ inline "#1.addEventListener(#2, #3)" }

external inline addEventListener : (this: htmlCommandElement, type_: string, listener: eventListener, capture: bool) -> dom ()
{ inline "#1.addEventListener(#2, #3, #4)" }

external inline removeEventListener : (this: htmlCommandElement, type_: string, listener: eventListener) -> dom ()
{ inline "#1.removeEventListener(#2, #3)" }

external inline removeEventListener : (this: htmlCommandElement, type_: string, listener: eventListener, capture: bool) -> dom ()
{ inline "#1.removeEventListener(#2, #3, #4)" }

external inline dispatchEvent : (this: htmlCommandElement, event: event) -> dom bool
{ inline "#1.dispatchEvent(#2)" }

