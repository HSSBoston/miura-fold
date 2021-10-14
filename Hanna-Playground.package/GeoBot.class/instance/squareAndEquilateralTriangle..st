drawing-1
squareAndEquilateralTriangle: side

	self square: side. 
	self turnLeft: 90; go: side; turnRight: 90.
	self equilateralTriangle: side. 