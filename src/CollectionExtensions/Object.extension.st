Extension { #name : #Object }

{ #category : #'*collectionextensions' }
Object >> deepFlattenInto: stream [

	stream nextPut: self
]
