private drawing
triangleNoDirectionDrawOn: aCanvas position: aPoint color: aColor 
	"Draw the receiver as a triangle"
	
	| min p1 p2 p3 dir vertices center myExtent |
	myExtent := self extent.
	center := aPoint + (myExtent // 2).
	min := (myExtent x min: myExtent y)
				// 2.
	dir := (min / 2 sqrt) truncated.
	dir := dir @ (dir - 2).
	p1 := center - dir.
	dir := dir x @ dir y negated.
	p2 := center - dir.
	p3 := center x + min @ center y.
	vertices := Array
				with: p1
				with: p2
				with: p3.
	aCanvas drawPolygon: vertices fillStyle: aColor