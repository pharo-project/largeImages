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

			spec postLoadDoIt: #postload:package:.

			spec
				baseline: 'Spotter'
				with: [ spec 
					loads: 'indexes';
					repository: 'github://tesonep/spotter/src' ].

			spec
				baseline: 'Complishon'
				with: [ spec repository: 'github://guillep/complishon/src' ].
					
			spec 
				group: 'default' with: #('Spotter' 'Complishon') ]
]

{ #category : #actions }
BaselineOfLargeImageSupport >> postload: loader package: packageSpec [

	"I will disable the format of incomplete identifiers, as it has to traverse the whole symbol table"
	SHRBTextStyler formatIncompleteIdentifiers: false.

]
