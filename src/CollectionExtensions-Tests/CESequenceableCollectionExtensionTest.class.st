Class {
	#name : #CESequenceableCollectionExtensionTest,
	#superclass : #TestCase,
	#category : #'CollectionExtensions-Tests'
}

{ #category : #tests }
CESequenceableCollectionExtensionTest >> testGroupsOfStep [
	
	"regular partition where all items are partitioned"
	self
		assert: (#(1 2 3 4 5) groupsOf: 2 step: 1)
		equals: (OrderedCollection withAll: #(#(1 2) #(2 3) #(3 4) #(4 5))).
		
	self
		assert: (#( 1 2 3 4 ) groupsOf: 2 step: 1)
		equals: (OrderedCollection with: #( 1 2 ) with: #( 2 3 ) with: #(3 4)).

	self
		assert: (#( 1 2 3 4 5 6 7 ) groupsOf: 3 step: 2)
		equals: (OrderedCollection withAll: #( #( 1 2 3 ) #( 3 4 5 ) #( 5 6 7 ) )) "7 is missing".
	
	"extra items that don't make up a full partition are included as last group"
	self 
		assert: (#(1 2 3 4 5 6) groupsOf: 3 step: 2)
		equals: (OrderedCollection withAll: #( #(1 2 3) #(3 4 5) #(5 6))).
						
	"if step and n are equal, works like regular groupsOf:"
	1 to: 10 do: [ :n | 
 		self 
			assert: (#(1 2 3 4 5 6 7 8 9 10) groupsOf: n step: n)
			equals: (#(1 2 3 4 5 6 7 8 9 10) groupsOf: n)
	].

	"step can also skip elements"
	self
		assert: (#(1 2 3 4 5 6 7) groupsOf: 2 step: 3)
		equals: (OrderedCollection withAll: #(#(1 2) #(4 5) #(7))).
	self 
		assert: (#(1 2 3 4 5 6) groupsOf: 2 step: 4)
		equals: (OrderedCollection  withAll: #(#(1 2) #(5 6))).
		
	


]

{ #category : #tests }
CESequenceableCollectionExtensionTest >> testPairsSimilarityWith [
	
	self assert: ('1234' pairsSimilarityWith: '2234') equals: (2/3).
	self assert: ('1234' pairsSimilarityWith: '123') equals: (4/5).
	self assert: ('1234' pairsSimilarityWith: '5678') equals: 0
]
