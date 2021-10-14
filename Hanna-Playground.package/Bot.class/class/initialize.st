class initialization
initialize
	"Per default the newly created robot look like a robot.  
	
To make them looking like a Triangle: Bot lookLikeTriangle. "
	
"Bot initialize"
	
	Halos := self createHalosSpec: (self rawHaloSpec).
	self lookLikeBot.
	DefaultDisplaySelector := #lookLikeBot  