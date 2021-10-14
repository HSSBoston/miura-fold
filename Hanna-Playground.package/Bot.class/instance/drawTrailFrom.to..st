private drawing
drawTrailFrom: startPoint to: endPoint 
	"Draw a line between startPoint and endPoint"
	
	self trailMorph
		ifNotNilDo: [:tm | tm
				drawLineFrom: startPoint
				to: endPoint
				color: penColor
				size: penSize]