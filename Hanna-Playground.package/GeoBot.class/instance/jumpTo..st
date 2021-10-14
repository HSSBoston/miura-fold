moving
jumpTo: aPoint 
	"changes the receiver position so that its center is placed at the  
	position aPoint"
	
	pen up.
	pen goto: aPoint.
	pen down.