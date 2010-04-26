Class {
	#name : #CEStringExtensionTest,
	#superclass : #TestCase,
	#category : #CollectionExtensions
}

{ #category : #'as yet unclassified' }
CEStringExtensionTest >> testPiecesCutWhereCamelCase [

	self assert: ('' piecesCutWhereCamelCase) isEmpty.
	self assert: ('fooBar' piecesCutWhereCamelCase) asArray  = #('foo' 'Bar').
]
