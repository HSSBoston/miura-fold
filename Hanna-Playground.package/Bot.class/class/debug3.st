debug
debug3
	"Bot debug3"
	
	| caro point1 point2 point3 |
	World clearTurtleTrails.
	Bot deleteAllBots.
	point1 := 200 @ 300.
	point2 := 200 @ 250.
	point3 := 150 @ 300.
	caro := self new.
	caro jumpTo: point1.
	caro jumpTo: point2.
	caro goTo: point3.
	caro goTo: point1.
	point1 := point1 + (100 @ 100).
	point2 := point2 + (100 @ 100).
	point3 := point3 + (100 @ 100).
	caro jumpTo: point1.
	caro goTo: point2.
	caro goTo: point3.
	caro goTo: point1