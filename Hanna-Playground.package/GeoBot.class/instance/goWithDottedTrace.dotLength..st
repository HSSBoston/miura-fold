moving
goWithDottedTrace: distance dotLength: length
	"make the receiver go forward a given distance (in pixels) toward the current direction"
	
	| destination |
	destination := self locationIfGo: distance.
	 [(self distanceFrom: destination) >= length] whileTrue: [
			self go: length.
			((self distanceFrom: destination) >= length) ifTrue: [ self jump: length. ] ]. 
