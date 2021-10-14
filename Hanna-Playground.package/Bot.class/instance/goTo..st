operations
goTo: aPoint 
	"make the receiver go at a given point of the screen. The  
	
receiver let a trace on the screen from its current position to  
	
the final point."
	self yield.
	self drawTrailFrom: self center to: aPoint.
	self center: aPoint