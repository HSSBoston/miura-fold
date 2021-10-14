old private drawing
imageDrawOn: aCanvas position: aPoint color: aColor 
	
	| formAndOffset form offset scaleFactor myCenter |
	scaleFactor := self imageScaleFactor.
	Transcript show: scaleFactor asString ; cr. 
	formAndOffset := WarpBlt
				rotate: image
				degrees: self direction
				center: image center
				scaleBy: 1
				smoothing: 1.
	form := formAndOffset at: 1.
	offset := formAndOffset at: 2.
	myCenter := aPoint + (self extent // 2).
	aCanvas
		image: form
		at: myCenter - (image extent // 2) + offset
		sourceRect: form boundingBox
		rule: Form paint