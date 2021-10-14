process control
yield
	owner ifNil: [ BotProcessTermination signal ]
		ifNotNil: [ BotProcess yield ]