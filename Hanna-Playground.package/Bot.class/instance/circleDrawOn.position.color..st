old private drawing
circleDrawOn: aCanvas position: aPoint color: aColor 
	"Draw the receiver as a circle."
	
	| myExtent myCenter diameter |
	myExtent := self extent.
	myCenter := aPoint + (myExtent // 2).
	diameter := myExtent x min: myExtent y.
	aCanvas
		fillOval: (Rectangle center: myCenter extent: diameter * 0.85)
		color: aColor.
	aCanvas
		line: myCenter
		to: (self positionIfGo: diameter // 2 - 1)
				- self center + myCenter
		width: 2
		color: Color black