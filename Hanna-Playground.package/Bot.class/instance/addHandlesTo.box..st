private morphic
addHandlesTo: aHaloMorph box: box
	"Add halo handles to the halo.  Apply the halo filter if appropriate"

	aHaloMorph haloBox: box.	
	Halos "(self createHalosSpec: self rawHaloSpec)"
		do: [:aSpec | 
			aHaloMorph perform: aSpec addHandleSelector with: aSpec].
	