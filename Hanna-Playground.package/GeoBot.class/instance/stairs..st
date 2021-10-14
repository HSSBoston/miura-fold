drawing-1
stairs: side

	4 timesRepeat: [self turnLeft: 90;
						 go: side;
						 turnRight: 90;
						 go: side.].
	2 timesRepeat: [self turnRight: 90;
						 go: 4*side.].

	
