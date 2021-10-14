moving
quarterCircle: radius 
	"Draw a quarter circle from the cucrrent location, counter clockwise. 
	The center of the circle is (currentX+radius)@currentY."
	
	|angle repeatCount |
	
	angle := 180/(Float pi * radius).
	repeatCount := 360/angle. 
	repeatCount/4 timesRepeat: [self go: 1; turnRight: angle].
	