images
saveImage: aString
	"Save the current graphics on a file named aString"	

	| stream |
	stream := FileStream newFileNamed: aString, '.frm'.
	image storeOn: stream.
	
	