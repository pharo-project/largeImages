Class {
	#name : #SptClassProcessorWithIndexTest,
	#superclass : #SptClassProcessorTest,
	#category : #'GT-Spotter-Indexes-Tests'
}

{ #category : #running }
SptClassProcessorWithIndexTest >> setUp [ 
	
	super setUp.
	SptSourceWithIndexFactory forTest
]
