Extension { #name : 'SmallInteger' }

{ #category : '*Die' }
SmallInteger >> D10 [

	^ self D: 10
]

{ #category : '*Die' }
SmallInteger >> D20 [

	^ self D: 20
]

{ #category : '*Die' }
SmallInteger >> D4 [

	^ self D: 4
]

{ #category : '*Die' }
SmallInteger >> D:n [ 

	| hd |
	hd := DieHandle new. 
	self timesRepeat: [ hd add: (Die new faces: n) ].
	^ hd 
]
