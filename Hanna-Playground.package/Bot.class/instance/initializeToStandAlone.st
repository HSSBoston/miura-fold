initialization
initializeToStandAlone
	"Initialize a newly created object"
	"Bot newStandAlone openInWorld"
	
	super initializeToStandAlone.
	self extent: 80 @ 80.
	self privateInitialize.
	direction := self canonicalAngle: 0.
	self clearBotBuffer.
	self penSize: 1.
	self beVisible.
	self
		color: (Color blue alpha: 0.85).
	self penColor: Color black.
	self
		balloonFont: (StrikeFont familyName: #ComicPlain size: 17).