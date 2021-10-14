instance creation
newOnForm
	^super new initializeOnForm; yourself. 
	
	"| bot |
	bot := super new.
	bot initializeOnForm.
	^bot"