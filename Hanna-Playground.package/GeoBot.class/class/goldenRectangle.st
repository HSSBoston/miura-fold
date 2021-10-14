examples
goldenRectangle
	"comment stating purpose of message"

| bot shortSide longSide numberOfRectangles |
shortSide := 100.
longSide := shortSide * 1.618. 
numberOfRectangles := 10.

bot := GeoBot new.
bot jumpTo: 0@200.
bot turnLeft: 90.

bot go: shortSide; turnRight: 90; go: longSide; turnRight: 90.
bot go: shortSide; turnRight: 90; go: longSide; turnRight: 90.

numberOfRectangles timesRepeat: [
	bot go: shortSide; turnRight: 90; go: shortSide; turnRight: 90.
	bot go: shortSide; turnRight: 180; go: shortSide; turnRight: 90.
	shortSide := longSide - shortSide.
	longSide := shortSide * 1.618. ].