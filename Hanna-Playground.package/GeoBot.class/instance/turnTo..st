turning
turnTo: anInteger
	"Change the direction of the receiver so that it points at the absolute angle (direction)
	represented by anInteger. This argument indicates a canonical angle. "

	| currentCanonicalAngle targetCanonicalAngle |
	
	currentCanonicalAngle := self direction.
	targetCanonicalAngle := anInteger.
	self turn: (targetCanonicalAngle - currentCanonicalAngle). 
	
	"currentCanonicalAngle := self canonicalAngle: (pen direction).
	targetCanonicalAngle := self canonicalAngle: anInteger.
	self turn: (targetCanonicalAngle - currentCanonicalAngle)."
