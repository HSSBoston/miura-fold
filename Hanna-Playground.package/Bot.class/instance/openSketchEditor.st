private morphic
openSketchEditor

	"| sketchmorph |
	image isNil ifTrue: [image := (Form extent: 100 @ 100 depth: Display depth)].
	sketchmorph := (SketchMorph withForm: image) 
						center: self currentWorld center ; 
					openInWorld;
					editDrawing.
	self halt.
	sketchmorph isNil ifFalse: [self image: sketchmorph form].
	self lookLikeImage.
	sketchmorph delete"
	

	| aWorld bnds sketchEditor formToEdit aPaintBox |
	
	(aWorld := self world) assureNotPaintingElse: [^ self].
	aWorld prepareToPaint.
	aWorld displayWorld.
	image isNil ifTrue: [image := (Form extent: 100 @ 100 depth: Display depth)].
	formToEdit := image.
	"bnds := (submorphs second boundsInWorld origin extent: formToEdit extent) intersect: aWorld bounds.
	bnds := (aWorld paintingBoundsAround: a center) merge: bnds."
	bnds := (aWorld paintingBoundsAround: aWorld center).
	sketchEditor := SketchEditorMorph new.
	aWorld addMorphFront: sketchEditor.
	sketchEditor 
		initializeFor: ((SketchMorph withForm: formToEdit) 
							position: aWorld center)  
		inBounds: bnds pasteUpMorph: aWorld paintBoxPosition: bnds topRight.
	sketchEditor
		afterNewPicDo: [:aForm :aRect |
			
			"self updateThumbnail."
			self image: aForm.
			self east.
			self lookLikeImage.
			(aPaintBox := aWorld paintBoxOrNil) ifNotNil: [aPaintBox delete]] 
		ifNoBits:
			[(aPaintBox := aWorld paintBoxOrNil) ifNotNil: [aPaintBox delete]].
	
