instance creation
newOnWindow: anExtent depth: aDepth backgroundColor: aColor
	^super new initializeOnWindow: anExtent depth: aDepth backgroundColor: aColor;
				 yourself. 
	
	"| bot |
	bot := super new.
	bot initializeOnWindow initializeOnWindow: anExtent.
	^bot"