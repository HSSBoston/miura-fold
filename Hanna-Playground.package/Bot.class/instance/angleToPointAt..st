advanced operations
angleToPointAt: aPoint 
	"return the angle between the current direction and the angle made to point at a given point"

	^ (self absoluteAngleToPointAt: aPoint) - (self direction \\ 360)
	 