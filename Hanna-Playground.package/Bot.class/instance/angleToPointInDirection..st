advanced operations
angleToPointInDirection: anAngle

	^(self canonicalAngle: (anAngle - self direction))