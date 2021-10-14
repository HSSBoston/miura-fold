image in/out
saveImage
	"Save the current graphic prompting the user for a name"	

	| filename |
	filename :=	FillInTheBlank  request: 'Give a name to your graphic' initialAnswer: 'r2d2'.
	filename isNil 
		ifFalse: [filename isEmpty ifFalse: [self saveImage: filename]]
	
	