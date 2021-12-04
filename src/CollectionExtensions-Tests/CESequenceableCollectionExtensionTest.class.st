Class {
	#name : #CESequenceableCollectionExtensionTest,
	#superclass : #TestCase,
	#category : #'CollectionExtensions-Tests'
}

{ #category : #tests }
CESequenceableCollectionExtensionTest >> testPairsSimilarityWith [
	
	self assert: ('1234' pairsSimilarityWith: '2234') equals: (2/3).
	self assert: ('1234' pairsSimilarityWith: '123') equals: (4/5).
	self assert: ('1234' pairsSimilarityWith: '5678') equals: 0
]

{ #category : #tests }
CESequenceableCollectionExtensionTest >> testPartitionBy [
	
	"regular partition where all items are partitioned"
	self assert: (#(1 2 3 4) partitionBy: 2) equals: #(#(1 2) #(3 4)). 
	
	"extra items that don't make up a full partition aren't included"
	self assert: (#(1 2 3 4 5 6 7) partitionBy: 3) equals: #(#(1 2 3) #(4 5 6)). "7 is missing"
]
