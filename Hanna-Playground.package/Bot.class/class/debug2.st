debug
debug2
	"Bot debug2"
	
	| caro |
	World clearTurtleTrails.
	Bot deleteAllBots.
	caro := self new.
	"caro lookLikeTriangle."
	caro go: 100.
	caro turn: 90.
	caro go: 200.
	caro turn: 90.
	caro go: 250.
	caro goTo: 400 @ 400.
	caro turn: 90