private drawing
fillBotBuffer
	"Draw the turtle on a internal buffer using the right  
	representation"
	
	| myCenter |
	turtleBuffer := (Form extent: self extent depth: self world canvas form depth) getCanvas.
	self isLookingLikeImage
		ifTrue: [
				myCenter := (self extent // 2).
				turtleBuffer 
					image: image
					at: myCenter - (image extent // 2)
					sourceRect: image boundingBox
					rule: Form paint.
				^ self].
	self
		perform: drawSelector
		withArguments: (Array
				with: turtleBuffer
				with: 0 @ 0
				with: (self color alpha: 1))