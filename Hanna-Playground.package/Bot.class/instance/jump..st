operations
jump: distance 
	"make the receiver goes forward from a given distance but 
	without making a trace on 
	
 the screen"
	
	self
		jumpTo: (self positionIfGo: distance)