writing
displayText
	"This method DOES NOT work yet."

	| t |
	t := TextMorph new.
	"t beAllFont: (StrikeFont familyName: 'BitstreamVeraSans' size: 18)."
	"t beAllFont: (StrikeFont familyName: 'LiberationSans' size: 18)."
	"t beAllFont: (StrikeFont familyName: 'Atlanta' size: 28)."
	"t beAllFont: (StrikeFont familyName: 'Geneva' size: 18)."
	"t beAllFont: (StrikeFont familyName: 'Monaco' size: 18)."
	t beAllFont: (StrikeFont familyName: 'Lucida Grande' size: 18).
	t contents: 'ABC'.
	"f := Form extent: 100@100 depth: 32.
	f fillColor: Color white."
	t drawOn: form getCanvas.
	"f display."  
	
	"name := 'Jun'.
	displayName := name asDisplayText.
	displayName foregroundColor: Color black
				  backgroundColor: Color white. 
	displayName displayAt: 200@200."