interaction
wand
	"self new wand"
	
	[self anyButtonPressed]
		whileFalse: [self go: 30 atRandom.
			self turnLeft: 30 atRandom]