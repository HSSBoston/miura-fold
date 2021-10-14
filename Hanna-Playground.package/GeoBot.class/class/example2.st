examples
example2

	| bot  bot2 |
	bot := GeoBot new.
	bot square. 
	
	bot2 :=  GeoBot newOnExistingWindow.
	bot2 turnLeft: 45.
	bot2 jump:200.
	bot2 color: Color red.
	bot2 regularStar.