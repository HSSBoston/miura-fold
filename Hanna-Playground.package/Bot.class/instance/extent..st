drawing
extent: aPoint 
	"Change the receiver's extent, but check for a minimun"
	
	| newBounds |
	self yield.
	newBounds := self calcBoundsForExtent: aPoint.
	self bounds = newBounds
		ifTrue: [^ self].
	self changed.
	bounds := newBounds.
	self clearBotBuffer.
	self layoutChanged.
	self changed