turning
pointAt: aPoint 
	"Make the receiver pointing in the direction of a given point"
	
	self turnTo: (self absoluteAngleToPointAt: aPoint)