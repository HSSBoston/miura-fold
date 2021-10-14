drawing-1
rectangleWith: shortSide with: longSide

	2 timesRepeat: [self go: shortSide;
						 turnLeft: 90;
						 go: longSide;
						 turnLeft: 90.] 
