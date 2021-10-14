examples
example1
	
	| caro |
	caro := Bot new.
	20
		timesRepeat: [caro penColor: Color green.
			caro penSize: 4.
			10
				timesRepeat: [caro go: 1].
			caro penSize: 1.
			caro penColor: Color blue.
			10
				timesRepeat: [caro go: 1]]