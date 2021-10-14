basic operations
positionIfGo: aDistance 
	"Return the point that is at a distance aDistance in the direction 
	pointed by the receiver"
	
	^ self center + (direction degreeCos @ direction degreeSin negated * aDistance) rounded