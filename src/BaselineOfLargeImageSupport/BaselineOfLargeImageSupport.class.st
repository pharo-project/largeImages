Class {
	#name : #BaselineOfLargeImageSupport,
	#superclass : #BaselineOf,
	#category : #BaselineOfLargeImageSupport
}

{ #category : #baselines }
BaselineOfLargeImageSupport >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 

			spec
				baseline: 'Spotter'
				with: [ spec repository: 'github://tesonep/spotter/src' ].

			spec
				baseline: 'Complishon'
				with: [ spec repository: 'github://guillep/complishon/src' ].
					
			spec 
				group: 'default' with: #('Spotter' 'Complishon') ]
]
