examples
miuraFold
	"comment stating purpose of message"
	
	| bot length width n m a previous |
	length := 300.
	width := 500.
	n := 3.
	m := 5.
	a := 20.

	bot := GeoBot new. 
	bot jumpTo: 0@0; turnTo: 0.
	bot go: width; turnRight: 90.
	bot go: length; turnRight: 90.
	bot go: width; turnRight: 90.
	bot go: length.
	bot turnRight: 180.

	(n-1) timesRepeat:[
		bot go: length/n.
		bot turnLeft: 90.
		bot go: width.
		bot turnRight: 180.
		bot go: width.
		bot turnLeft: 90.
	].

	bot jumpTo: 0@0.
	bot turnLeft: 90.

	(m-1) timesRepeat:[
		bot go: width/m.
		previous := bot location.

		1 to: n do:[:x |
			(x odd) ifTrue:[ bot turnTo: 270-a. ].
			(x even) ifTrue:[ bot turnTo: 270+a. ].
			[(bot location y asInteger)=((((length/n) asFloat) asInteger)*x)]
			whileFalse:[ bot go: 1. ].
		].
		bot jumpTo: previous.
		bot turnTo: 0.
	].
