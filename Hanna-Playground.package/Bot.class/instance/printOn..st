printing
printOn: aStream 
	"Write on aStream information relative to the receiver"

	super printOn: aStream.
	aStream nextPutAll: ' direction: ';
		 nextPutAll:  direction asString;
		 nextPutAll: ' position: ';
		 nextPutAll: self center printString