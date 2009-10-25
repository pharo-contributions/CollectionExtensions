Extension { #name : #Set }

{ #category : #'*CollectionExtensions' }
Set >> flatCollect: aBlock [ 
	
	
	^self flatCollectAsSet: aBlock
]
