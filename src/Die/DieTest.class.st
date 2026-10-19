Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Die',
	#package : 'Die'
}

{ #category : 'tests' }
DieTest >> testDieSetAndGet [

	self assert: (Die new faces: 8) faces equals: 8
]

{ #category : 'tests' }
DieTest >> testInitializationIsOk [

	self assert: Die new faces equals: 6
]

{ #category : 'tests' }
DieTest >> testPrinting [

	| d |
	d := Die new. 
	self 
		assert: d printString 
		equals: 'a Die (6)'
]

{ #category : 'tests' }
DieTest >> testPrinting8 [

	| d |
	d := Die new. 
	d faces: 8.
	self 
		assert: d printString 
		equals: 'a Die (8)'
]

{ #category : 'tests' }
DieTest >> testRoll [

	| d |
	d := Die new. 
	100 timesRepeat: [ 
		
		self assert: (d roll between: 1 and: 6) ]
	
]
