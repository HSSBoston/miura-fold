private image
image: aForm 
	"Change the image used as graphical representation"	
	
	self yield.
	image := aForm.
	"self isLookingLikeImage
			ifFalse: [^ self]."
	self clearBotBuffer.
	self changed