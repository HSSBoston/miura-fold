images
loadImage
	"Load an image from a file and install it as new graphics"
	"Bot new loadImage"
	| name |
	name :=	FillInTheBlank  request: 'Give the name of the graphic you want to load' initialAnswer: 'r2d2'.
	name isNil
		ifFalse: [self loadImage: name]
	