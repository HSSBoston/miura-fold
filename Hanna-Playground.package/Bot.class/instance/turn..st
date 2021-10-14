turning
turn: degrees 
	"Change the direction of the receiver by a certain number of degrees. Following mathematical convention, a turn through a positive number of degrees is taken counterclockwise, while a turn through a negative  number of degrees is taken clockwise."
	
	self direction: self direction + degrees.