shapes
lookLikeImage
	"If an image has been defined or loaded, set the default  
	
	way of representing the robot to be a circle"
	Image isNil  
	     ifTrue: [^ self].  
	DrawSelector := self imageDrawSelector.
	"this way we always draw via the image"
	
	"self setImageFromMorph: self new"