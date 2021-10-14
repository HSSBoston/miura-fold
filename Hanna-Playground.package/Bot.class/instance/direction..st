private
direction: anAngle 

	self yield.
	anAngle = self direction
		ifTrue: [^ self].
	direction := self canonicalAngle: anAngle.
	self clearBotBuffer.
	self changed