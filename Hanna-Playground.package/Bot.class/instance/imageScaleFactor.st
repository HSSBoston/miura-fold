private drawing
imageScaleFactor
	
	| e1 m1 e2 m2 |
	e1 := self extent // 2.
	m1 := e1 x min: e1 y.
	e2 := image extent // 2.
	m2 := (e2 x squared + e2 y squared) sqrt.
	^ (m1 / m2) asFloat asPoint