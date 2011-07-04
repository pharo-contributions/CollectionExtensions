Class {
	#name : #SequenceableCollectionExtensionTest,
	#superclass : #TestCase,
	#category : #CollectionExtensions
}

{ #category : #tests }
SequenceableCollectionExtensionTest >> testPairsDistanceFrom [
	
	self assert: ('1234' pairsDistanceFrom: '2234') equals: (2/3).
	self assert: ('1234' pairsDistanceFrom: '123') equals: (4/5).
	self assert: ('1234' pairsDistanceFrom: '5678') equals: 0
]
