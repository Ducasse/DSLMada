Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Die',
	#package : 'Die'
}

{ #category : 'adding' }
DieHandle >> + aHandle [

	| hd |
	hd := DieHandle new.
	self addYourselfInto: hd.
	aHandle addYourselfInto: hd.
	^ hd 
]

{ #category : 'adding' }
DieHandle >> add: aDie [

	dice add: aDie
]

{ #category : 'adding' }
DieHandle >> addYourselfInto: aDieHandle [

	dice do: [ :each | aDieHandle add: each ]
]

{ #category : 'accessing' }
DieHandle >> dice [

	^ dice
]

{ #category : 'initialization' }
DieHandle >> initialize [ 

	super initialize.
	dice := OrderedCollection new
]

{ #category : 'accessing' }
DieHandle >> numberOfDice [
	
	^ dice size
]

{ #category : 'rolling' }
DieHandle >> roll [ 

	| res |
	res := 0.
	dice do: [ :d | res := res + d roll ].
	^ res 
]
