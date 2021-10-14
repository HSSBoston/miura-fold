private drawing
turtleBuffer
	"Return the turtle buffer"

	turtleBuffer isNil 
		ifTrue: [self fillBotBuffer].
	^ turtleBuffer