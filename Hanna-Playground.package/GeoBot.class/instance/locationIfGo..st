sensing
locationIfGo: aDistance 
	"Return the location that is at a distance aDistance in the direction 
	pointed by the receiver. Returns a Point. "
	
	"^ self location + (self direction degreeCos @ self direction degreeSin negated * aDistance) rounded"
	^ self location + (self direction degreeCos @ self direction degreeSin negated * aDistance)