deprecated
getImageFromMorph: aMorph 
	"Get an image from a Morph"

	| worldForm bigForm |
	worldForm := World canvas form.
	bigForm := Form extent: worldForm extent depth: worldForm depth.
	aMorph drawOn: bigForm getCanvas.
	^ bigForm getCanvas contentsOfArea: aMorph bounds