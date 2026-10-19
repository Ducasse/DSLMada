Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Die',
	#package : 'Die'
}

{ #category : 'accessing' }
Die >> faces [
	^ faces
]

{ #category : 'accessing' }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : 'initialization' }
Die >> initialize [

	super initialize.
	faces := 6
]

{ #category : 'printing' }
Die >> printOn: astream [

	super printOn: astream.
	astream 
		nextPutAll: ' (';
		print: faces ;
		nextPutAll: ')'
]

{ #category : 'rolling' }
Die >> roll [

	^ faces atRandom
	
	
]
