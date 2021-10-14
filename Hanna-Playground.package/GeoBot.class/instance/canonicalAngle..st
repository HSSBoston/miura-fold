private direction
canonicalAngle: penDirection
	"Takes Pen's direction (penDirection) and converts it to a canonicalAngle"
	
	|canonicalAngle|
	
	(penDirection >=0)	ifTrue: [ canonicalAngle := 360 - (penDirection\\360). ]
						ifFalse: [ canonicalAngle := (penDirection abs)\\360. ].
	(canonicalAngle=360) ifTrue: [canonicalAngle := 0. ].
	^canonicalAngle.
	