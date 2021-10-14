process control
delayTillEndOfSlice 
	owner ifNil: [ BotProcessTermination signal ]
		ifNotNil: [ BotProcess delayTillEndOfSlice]
