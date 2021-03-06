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
				baseline: 'VMTunning'
				with: [ spec repository: 'github://pharo-project/pharo-vm-tunning/src' ].

			spec
				baseline: 'Aleph'
				with: [ spec repository: 'github://pharo-project/aleph/src' ].
				
			spec package: 'Spotter-Indexes' with: [ spec requires: #(Aleph VMTunning) ].
			spec package: 'Spotter-Indexes-Tests' with: [ spec requires: #('Spotter-Indexes') ]. 
			
			spec group: 'default' with: #('Spotter-Indexes' 'Spotter-Indexes-Tests')]
]

{ #category : #actions }
BaselineOfLargeImageSupport >> postload: loader package: packageSpec [

	"I will disable the format of incomplete identifiers, as it has to traverse the whole symbol table"
	SHRBTextStyler formatIncompleteIdentifiers: false.
	
	TKTConfiguration profile: TKTProfile production.

	"I will recalculate the indexes"
	Smalltalk
		at: #StSourceWithIndexFactory
		ifPresent: [ :sourceWithIndexFactory | sourceWithIndexFactory buildIndexes ].
]
