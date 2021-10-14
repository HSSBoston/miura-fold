drawing-1
dottedLineSegments: lineSegmentLength

	self turnLeft: 45. 
	4 timesRepeat: [self go: lineSegmentLength;
						 jump: lineSegmentLength.]
