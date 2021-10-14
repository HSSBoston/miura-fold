image in/out
loadImage: aString
	"Load an image from a file and install it as new graphics" 

	| stream res |
	stream := FileStream readOnlyFileNamed: aString, '.frm'.
	res := Compiler new evaluate: stream in: nil to: nil notifying: nil ifFail: [nil].
	res isNil
		ifTrue: [PopUpMenu inform: 'Problem with the file ', aString, '.frm']
		ifFalse: [(res isKindOf: Form)
					ifTrue: [self image: res]]