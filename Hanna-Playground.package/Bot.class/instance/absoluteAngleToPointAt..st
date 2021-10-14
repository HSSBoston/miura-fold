basic operations
absoluteAngleToPointAt: aPoint 
	"Return the direction that should turn a turtle to point in  
	direction of a given point."

	| dx dy position |
	position := self center.
	dx := aPoint x - position x.
	dy := aPoint y - position y.
	^ dx > 0
		ifTrue: [(dy / dx) arcTan radiansToDegrees negated]
		ifFalse: [dx < 0
				ifTrue: [180 + (dy / dx) arcTan radiansToDegrees negated]
				ifFalse: [90 * dy negated sign]]