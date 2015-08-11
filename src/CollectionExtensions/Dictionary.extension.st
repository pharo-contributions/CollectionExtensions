Extension { #name : #Dictionary }

{ #category : #'*CollectionExtensions' }
Dictionary >> at: aKey ifPresent: aPresentBlock ifAbsentPut: anAbsentBlock [
	^ self 
		at: aKey 
		ifPresent: aPresentBlock
		ifAbsent: [ self at: aKey put: anAbsentBlock value]
]
