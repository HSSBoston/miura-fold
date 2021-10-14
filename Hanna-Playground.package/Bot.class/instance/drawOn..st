private drawing
drawOn: aCanvas 
	"Draw the receiver if it is visible"
	
	| form2 form formAndOffset offset myCenter |
	shown ifFalse: [^ self].
	form := self turtleBuffer form.
	formAndOffset := WarpBlt
				rotate: form
				degrees: self direction
				center: form center
				scaleBy: 1 @ 1
				smoothing: 1.
	form2 := formAndOffset at: 1.
	offset := formAndOffset at: 2.
	myCenter := self extent // 2.
	aCanvas
		image: form2
		at: self position + myCenter - (form extent // 2) + offset
		sourceRect: form2 boundingBox
		rule: Form paintAlpha
		alpha: self alpha