private image
setImageFromClass
	"Set the image associated with the class to be associated with the receiver"	

	self class hasImage ifFalse: [^ self].
	self image: self class image