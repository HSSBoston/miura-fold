images
lookLikeImage
	"If an image has been defined or loaded, make the receiver look  
	like the image"
	
	image isNil and: [self class hasImage not 
						ifTrue: [^ self]]. 
	image isNil 
		ifTrue: [self getImageFromClass].
	
	self drawSelector: self class imageDrawSelector.
	self clearBotBuffer