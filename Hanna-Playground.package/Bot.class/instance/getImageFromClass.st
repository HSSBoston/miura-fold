private image
getImageFromClass
	"Set the image associated with the class to be associated with the receiver"	

	self yield.
	self class hasImage ifFalse: [^ self].
	self image: self class image