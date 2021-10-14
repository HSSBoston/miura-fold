operations
go: distance 
	"make the receiver go forward a given distance (in pixels)"
	
	self goTo: (self positionIfGo: distance)