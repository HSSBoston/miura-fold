halos
rawHaloSpec
	"self initialize"

	^ #(
	"  	selector				horiz		vert			color info						icon key
		---------				------		-----------		-------------------------------		---------------"
	"(addDebugHandle:		right		topCenter		(blue	veryMuchLighter)		'Halo-Debug')"
	(addDismissHandle:		left			top				(red		muchLighter)			'Halo-Dismiss')
	"(addMenuHandle:		leftCenter	top				(red)							'Halo-Menu')"
	(addGrabHandle:			center		top				(black)							'Halo-Grab')
	"(addDragHandle:			rightCenter	top				(brown)						'Halo-Drag')"
	(addDupHandle:			right		top				(green)							'Halo-Dup')	
	"(addHelpHandle:			center		bottom			(lightBlue)					'Halo-Help')"
	(addGrowHandle:		right		bottom			(yellow)						'Halo-Scale')
	"(addScaleHandle:		right		bottom			(lightOrange)					'Halo-Scale')"
	"(addScriptHandle:		rightCenter	bottom			(green muchLighter)			'Halo-Script')"
	(addPaintBgdHandle:		right		center			(lightGray)						'Halo-Paint')
	(addViewingHandle:		leftCenter	bottom			(lightGreen lighter)				'Halo-View')
	"(addRepaintHandle:		right		center			(lightGray)						'Halo-Paint')"
	(addDrawBotHandle:	     left	         bottom 	         (red)			                   'Halo-Paint')
	(addSaveBotHandle:	     left          topCenter 	    (blue)			                    'Halo-Menu')
	(addLoadBotHandle:	     left 	    center 	         (pink)			                    'Halo-Debug')
     (addPassToClassHandle:	left    	bottomCenter	    (lightOrange)			 'Halo-Tile')				
		) 
	"Bot initialize"