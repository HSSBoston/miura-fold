image-exports
exportAsJPEG
	"comment stating purpose of message"

	| fileName |
	fileName := FillInTheBlankMorph request: 'Enter the name of an image file' initialAnswer: 'example.jpg'. 
	form writeJPEGfileNamed: fileName.