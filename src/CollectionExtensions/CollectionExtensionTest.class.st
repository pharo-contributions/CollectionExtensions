Class {
	#name : #CollectionExtensionTest,
	#superclass : #TestCase,
	#category : #CollectionExtensions
}

{ #category : #'collect as set' }
CollectionExtensionTest >> testCollectAsSet [
	"self debug: #testCollectAsSet"
	
	self assert: ((#() collectAsSet: [:each | each odd]) = Set new).
	self assert: (#(1 2 3 4 5 6) collectAsSet: [:each | each odd])
					 = (Set with: true with: false).
	self assert: (#(1 3 5 7 9 11) collectAsSet: [:each | each odd]) 
					= (Set with: true).
					
	self assert: (#(1 2 3 4 5 4 3 2 1) collectAsSet: [:each | each]) = (1 to: 5) asSet.
	
	
]

{ #category : #'collect as set' }
CollectionExtensionTest >> testCollectAsSetUsingSymbol [
	"self debug: #testCollectAsSetUsingSymbol"
	
	self assert: ((#() collectAsSet: #odd) = Set new).
	self assert: (#(1 2 3 4 5 6) collectAsSet: #odd)
					 = (Set with: true with: false).
	self assert: (#(1 3 5 7 9 11) collectAsSet: #odd) 
					= (Set with: true).
]

{ #category : #'flat collect' }
CollectionExtensionTest >> testFlatCollect [
	"self debug: #testFlatCollect"
	
	
]

{ #category : #'flat collect' }
CollectionExtensionTest >> testFlatCollectArray [
	"self debug: #testFlatCollectArray"
	
	self assert: ((#((1 2) (3 4) (5 3)) flatCollect: [ :each ]) = #(1 2 3 4 5 3)).
	self assert: ((#((1 2) (2 3) (1 3 4)) flatCollect: [:each]) = #(1 2 2 3 1 3 4)). 	
		
	self assert: ((#((1 2) (2 3) () ()) flatCollect: [:each]) = #(1 2 2 3)). 

	self assert: ((#((1 2) (2 3) (1 3 4)) flatCollect: [:each| Array with: each])
					=  #(#(1 2) #(2 3) #(1 3 4))).
					
	self assert: ((#((1 2) (2 3) (1 3 4)) flatCollect: [:each| Set with: each])
					=  #(#(1 2) #(2 3) #(1 3 4))).	
	

]

{ #category : #'flat collect' }
CollectionExtensionTest >> testFlatCollectSet [
	"self debug: #testFlatCollectSet"
	
	self assert: ((#((1 2) (1 2) (1 3 4)) asSet  flatCollect: [:each]) = #(1 1 2 3 4) asSet).
	self assert: ((#() asSet flatCollect: [:each]) = #() asSet).

	self assert:  ((#((1 2) () (1 3 4)) asSet  flatCollect: [:each]) = #(1 1 2 3 4) asSet).
	self assert:  ((#((1 2) #((99)) (1 3 4)) asSet  flatCollect: [:each]) 
					= #(1 1 2 3 4 (99)) asSet).
	self assert:  ((#((1 2) #(()) (1 3 4)) asSet  flatCollect: [:each]) 
					= #(1 1 2 3 4 ()) asSet).
]

{ #category : #groupedBy }
CollectionExtensionTest >> testGroupedBy [
	"self debug: #testGroupedBy"
	
	| res |
	res := #(1 2 3 4 5) asOrderedCollection 
				groupedBy: [:each | each odd].
	self assert:   (res at: true) = #(1 3 5) asOrderedCollection.
	self assert: (res at: false) = #(2 4) asOrderedCollection
]

{ #category : #groupedBy }
CollectionExtensionTest >> testGroupedByArray [
	"self debug: #testGroupedByArray"
	
	| res |
	res := #(1 2 3 4 5) groupedBy: [:each | each odd].
	self assert:   (res at: true) = #(1 3 5).
	self assert: (res at: false) = #(2 4)
]

{ #category : #groupedBy }
CollectionExtensionTest >> testGroupedBySet [
	"self debug: #testGroupedBySet"
	
	| res |
	res := #(1 2 3 4 5 3 4 5) asSet groupedBy: [:each | each odd].
	self assert: (res at: true) = #(1 3 5) asSet.
	self assert: (res at: false) = #(2 4) asSet
]

{ #category : #'symbol - value' }
CollectionExtensionTest >> testSymbolInPlaceOfBlock [
	"self debug: #testSymbolInPlaceOfBlock"
	
	self assert: (#(1 2 3 4) collect: #odd) =  #(true false true false).
	self assert: (#(1 2 3 4) select: #odd) =  #(1 3).
]
