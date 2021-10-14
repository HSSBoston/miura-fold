cleaning
deleteAllBots
	"Delete all the turtles"

	self allSubInstances
		do: [:each | each delete]