image in/out
saveImage: aString
	"Save the current graphics on a file named aString"	

	| stream |
	stream := FileStream newFileNamed: aString, '.frm'.
	Image storeOn: stream.
	