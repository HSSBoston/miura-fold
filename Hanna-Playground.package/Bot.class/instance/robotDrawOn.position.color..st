old private drawing
robotDrawOn: aCanvas position: aPoint color: aColor 
	"Draw the receiver as a robot. Draw the receiver as a circle. Before the circle and triangle were 
	not drawn using the WarpBlt therefore they had to perform  
	the rotation themselves"
	
	| myExtent myCenter diameter farPoint rayon |
	myExtent := self extent.
	myCenter := aPoint + (myExtent // 2).
	diameter := myExtent x min: myExtent y.
	rayon := diameter // 2.
	farPoint := (self positionIfGo: rayon - 1)
				- self center + myCenter.
	aCanvas
		fillRectangle: (Rectangle center: myCenter - (0 @ (rayon * 0.75)) extent: rayon @ (diameter * 0.25))
		color: Color gray.
	aCanvas
		fillRectangle: (Rectangle center: myCenter + (0 @ (rayon * 0.75)) extent: rayon @ (diameter * 0.25))
		color: Color gray.
	aCanvas
		fillOval: (Rectangle center: myCenter extent: diameter * 0.75)
		color: aColor.
	aCanvas
		line: myCenter
		to: farPoint
		width: 2
		color: Color black.
	aCanvas
		fillOval: (Rectangle center: farPoint extent: 4)
		color: Color red