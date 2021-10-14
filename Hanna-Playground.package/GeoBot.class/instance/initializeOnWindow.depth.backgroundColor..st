initialization
initializeOnWindow: anExtent depth: aDepth backgroundColor: aColor

	| pasteUpMorph scrollPane window form myImageMorph |
	
	window := SystemWindow labelled: 'Canvas'.
	window setWindowColor: Color veryLightGray.
	scrollPane := ScrollPane new.
	pasteUpMorph := PasteUpMorph new.
	pasteUpMorph extent: anExtent.
	scrollPane scroller addMorph: pasteUpMorph.
	window addMorph: scrollPane frame: (0@0 corner: 1@1).
	window openInWorld.
	window extent: anExtent.

	"Create ImageMorph"
	myImageMorph := ImageMorph new.
	pasteUpMorph addMorph: myImageMorph.
	myImageMorph newForm: (Form extent: (pasteUpMorph extent) depth: aDepth).
	myImageMorph bounds: (pasteUpMorph bounds).
 
	"Create Pen and use it to draw on ImageMorph"
	form := myImageMorph image.
	form fillColor: aColor.
	pen := Pen newOnForm: form.
	self configureDefaultPen.
	
	SharedForm := form.
	SharedWindow := window.