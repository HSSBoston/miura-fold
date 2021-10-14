instance creation
newOnWindow
	^super new initializeOnWindow; yourself. 
	
	"| bot |
	bot := super new.
	bot initializeOnWindow.
	^bot"