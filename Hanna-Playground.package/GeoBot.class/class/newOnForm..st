instance creation
newOnForm: anExtent
	^super new initializeOnForm: anExtent; 
				yourself. 
	
	"| bot |
	bot := super new.
	bot initializeOnForm.
	^bot"