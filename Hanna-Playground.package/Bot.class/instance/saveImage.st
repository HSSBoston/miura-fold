images
saveImage
	"Save the current graphic prompting the user for a name"	

	| name |
	name :=	FillInTheBlank  request: 'Give a name to your graphic' initialAnswer: 'r2d2'.
	name isNil 
		ifFalse: [name isEmpty ifFalse: [self saveImage: name]]
	
	