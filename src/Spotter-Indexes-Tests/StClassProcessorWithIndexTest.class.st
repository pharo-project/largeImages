Class {
	#name : #StClassProcessorWithIndexTest,
	#superclass : #StClassProcessorTest,
	#category : #'Spotter-Indexes-Tests'
}

{ #category : #running }
StClassProcessorWithIndexTest >> setUp [ 
	
	super setUp.
	StSourceWithIndexFactory forTest
]
