debug
debug
	"Bot debug"
	
	| caro point1 point2 point3 translation |
	World clearTurtleTrails.
	Bot deleteAllBots.
	self halt.
	point1 := 200 @ 300.
	point2 := 200 @ 250.
	point3 := 150 @ 300.
	translation := 50 @ 75.
	caro := self new.
	caro jumpTo: point1.
	caro goTo: point2.
	caro goTo: point3.
	caro goTo: point1.
	point1 := point1 + translation.
	point2 := point2 + translation.
	point3 := point3 + translation.
	caro jumpTo: point1.
	caro goTo: point2.
	caro goTo: point3.
	caro goTo: point1