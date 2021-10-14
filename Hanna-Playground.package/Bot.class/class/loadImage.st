image in/out
loadImage
	"Load an image from a file and install it as new graphics"

	| filename |
	filename :=	FillInTheBlank  request: 'Give the name of the graphic you want to load' initialAnswer: 'r2d2'.
	filename isNil
		ifFalse: [self loadImage: filename]
	