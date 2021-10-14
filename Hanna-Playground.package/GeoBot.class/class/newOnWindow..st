instance creation
newOnWindow: anExtent
	^super new initializeOnWindow: anExtent;
				 yourself. 
	
	"| bot |
	bot := super new.
	bot initializeOnWindow initializeOnWindow: anExtent.
	^bot"