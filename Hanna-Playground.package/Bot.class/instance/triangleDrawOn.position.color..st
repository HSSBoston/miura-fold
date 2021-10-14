old private drawing
triangleDrawOn: aCanvas position: aPoint color: aColor 
	"Draw the receiver as a triangle. Draw the receiver as a circle.  
	Before the circle and triangle were not drawn using the WarpBlt 
	therefore they had to perform the rotation themselves"
	
	| min p1 p2 p3 dir vertices center degrees myExtent |
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
	"the following will be removed because the image will do the  
	rotation"
	degrees := self direction.
	degrees ~= 0
		ifTrue: [1
				to: vertices size
				do: [:index | vertices at: index put: ((vertices at: index)
							rotateBy: degrees degreesToRadians
							about: center) rounded]].
	aCanvas drawPolygon: vertices fillStyle: aColor