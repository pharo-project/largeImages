Class {
	#name : #StImplementorsProcessorWithIndexTest,
	#superclass : #StImplementorsProcessorTest,
	#category : #'Spotter-Indexes-Tests'
}

{ #category : #running }
StImplementorsProcessorWithIndexTest >> setUp [ 
	
	super setUp.
	StSourceWithIndexFactory forTest
]
