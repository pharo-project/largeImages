Class {
	#name : #SptUnifiedProcessorWithIndexTest,
	#superclass : #SptUnifiedProcessorTest,
	#category : #'GT-Spotter-Indexes-Tests'
}

{ #category : #running }
SptUnifiedProcessorWithIndexTest >> setUp [ 
	
	super setUp.
	SptSourceWithIndexFactory forTest
]
