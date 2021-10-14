instance creation
new
	"Create a new turtle"

	^[ (self newStandAlone)
		openInWorld;
		setAtStartingPlace; yourself ] on: BotProcessTermination
		do: [ :ex | ex resume ].
