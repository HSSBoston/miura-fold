private
calcBoundsForExtent: aPoint 
	| newExtent origin corner |
	newExtent := aPoint max: 30 @ 30.
	newExtent := newExtent // 2.
	origin := self center - newExtent.
	corner := self center + newExtent.
	^ origin corner: corner.
