private
privateInitialize
	
	self getImageFromClass.
	drawSelector := self class drawSelector.
	vars := Dictionary new.
	memorizedPoints := OrderedCollection new.