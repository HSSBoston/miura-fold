moving
go: distance 
	"make the receiver go forward a given distance (in pixels) toward the current direction"
	
	self goTo: (self locationIfGo: distance)