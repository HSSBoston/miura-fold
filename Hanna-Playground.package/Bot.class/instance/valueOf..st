variables
valueOf: aSymbol 
	"Return the value of the variable named aSymbol"
	
	^ vars
		at: aSymbol
		ifAbsent: [self error: 'the turtle variable ' , aSymbol asString , ' is not defined']