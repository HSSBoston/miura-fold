private
canonicalAngle: anAngle 
	"returns an angle between 180 and -179"
	
	| angle |
	angle := anAngle \\ 360.
	^ angle > 180
		ifTrue: [angle - 360]
		ifFalse: [angle]