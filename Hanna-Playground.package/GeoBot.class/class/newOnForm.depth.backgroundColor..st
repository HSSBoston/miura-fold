instance creation
newOnForm: anExtent depth: aDepth backgroundColor: aColor
	^super new initializeOnForm: anExtent depth: aDepth backgroundColor: aColor;
				yourself. 
	
	"| bot |
	bot := super new.
	bot initializeOnForm.
	^bot"