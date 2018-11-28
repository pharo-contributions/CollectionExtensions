Class {
	#name : #BaselineOfCollectionExtensions,
	#superclass : #BaselineOf,
	#category : #BaselineOfCollectionExtensions
}

{ #category : #baselines }
BaselineOfCollectionExtensions >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'CollectionExtensions' ]
]
