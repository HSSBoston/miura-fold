private morphic
balloonFeedback
	
	self
		balloonFont: (StrikeFont familyName: #ComicPlain size: 17).
	self
		balloonColor: ((Color
				r: 1.0
				g: 1.0
				b: 0.6)
				alpha: 0.5).
	self setBalloonText: ('I''m a ' , self class name , '. \ My position is: ' , self center asString , ' and my direction is: ' , direction asString) withCRs