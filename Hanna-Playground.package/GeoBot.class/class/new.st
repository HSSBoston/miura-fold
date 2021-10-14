instance creation
new
	"Simply calls newOnWindow, which creates a bot on a default window.
	See GeometricBot>>initializeOnWindow for the default settings for a bot, window, color, etc.  
	To customize the window settings, use newOnWindow: or newOnWindow: depth: backgroundColor:. 
	For examlpe, do: 
		bot := GeometricBot newOnWindow: 200@200 depth: Display depth backgroundColor: Color white.
	To create a bot on a Form, call newOnForm."
	
	^self newOnWindow.
	
	"(SharedWindow isNil) ifTrue: [ ^self newOnWindow.  ]
						    ifFalse: [ ^self newOnExistingWindow. ]."
	
	
