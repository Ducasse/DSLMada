Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#category : 'Die',
	#package : 'Die'
}

{ #category : 'tests' }
DieHandleTest >> test2D20 [

	self assert: (2 D20) numberOfDice equals: 2.
	self assert: (2 D20) dice first faces equals: 20.
		


]

{ #category : 'tests' }
DieHandleTest >> test2D20Plus2D4 [

	self assert: (2 D20 + 2 D4) numberOfDice equals: 4.
	self assert: ((2 D20 + 2 D4) roll between: 4 and: 48)


]

{ #category : 'tests' }
DieHandleTest >> testAddition [

	| hd1 hd2 hd3 |
	hd1 := DieHandle new.
	hd1 add: Die new. 
	hd1 add: Die new.
	
	hd2 := DieHandle new.
	hd2 add: (Die new faces: 12). 
	hd2 add: (Die new faces: 12).
	hd2 add: (Die new faces: 12).
	
	hd3 := hd1 + hd2. 
	self assert: hd3 numberOfDice equals: 5	

]

{ #category : 'tests' }
DieHandleTest >> testHandleWith2Dice [

	| hd |
	hd := DieHandle new.
	hd add: Die new. 
	hd add: Die new.
	self assert: hd numberOfDice equals: 2 
]

{ #category : 'tests' }
DieHandleTest >> testRoll [

	| hd |
	hd := DieHandle new.
	hd add: Die new. 
	hd add: Die new.
	
	self assert: (hd roll between: 2 and: 12) 
]
