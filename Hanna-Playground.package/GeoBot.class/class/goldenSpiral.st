examples
goldenSpiral
	"comment stating purpose of message"

| hachi shortSide |
hachi := GeoBot new.
hachi color: Color green .
hachi width: 3.
shortSide := 300.
hachi jumpTo: 10@310.
hachi turnLeft: 90.
7 timesRepeat: [
	hachi quarterCircle: shortSide .
	shortSide := (shortSide * 1.62) - shortSide. ].