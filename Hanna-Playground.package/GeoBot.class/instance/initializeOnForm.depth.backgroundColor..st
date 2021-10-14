initialization
initializeOnForm: anExtent depth: aDepth backgroundColor: aColor
	"pen := PenNewbie new initialize.
	pen simpleAlmostSquareSpiral."

	form := Form extent: anExtent depth: Display depth.
	form fillColor: aColor.
	pen := Pen newOnForm: form. 
	form asMorph openInWorld. 
	self configureDefaultPen.
