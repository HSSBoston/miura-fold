cleaning
deleteBots
	"Delete all the turtles of this class"

	self allInstances do: [:aBot | aBot delete]