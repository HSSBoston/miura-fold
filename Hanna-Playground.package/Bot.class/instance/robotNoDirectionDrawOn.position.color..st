private drawing
robotNoDirectionDrawOn: aCanvas position: aPoint color: aColor 
	"Draw the receiver as a robot but always pointing to the east.  
	The rotation is handled by the imageDrawing..."
	
	| myExtent myCenter diameter farPoint rayon |
	myExtent := self extent.
	myCenter := aPoint + (myExtent // 2).
	diameter := myExtent x min: myExtent y.
	rayon := diameter // 2.
	farPoint := myCenter + (rayon - 2 @ 0).
	aCanvas
		fillRectangle: (Rectangle center: myCenter - (0 @ (rayon * 0.65)) extent: rayon @ (diameter * 0.25))
		color: Color gray.
	aCanvas
		fillRectangle: (Rectangle center: myCenter + (0 @ (rayon * 0.65)) extent: rayon @ (diameter * 0.25))
		color: Color gray.
	aCanvas
		fillOval: (Rectangle center: myCenter extent: diameter * 0.65)
		color: aColor.
	aCanvas
		line: myCenter
		to: farPoint
		width: 2
		color: Color black.
	aCanvas
		fillRectangle: (Rectangle center: farPoint extent: 4)
		color: Color red