Class {
	#name : #StUnifiedProcessorWithIndexTest,
	#superclass : #StUnifiedProcessorTest,
	#category : #'Spotter-Indexes-Tests'
}

{ #category : #running }
StUnifiedProcessorWithIndexTest >> setUp [ 
	
	super setUp.
	StSourceWithIndexFactory forTest
]

{ #category : #tests }
StUnifiedProcessorWithIndexTest >> testFindThisMethodWithFullClassIsTheCorrectclass [

	self runForText: 'StUnifiedProcessorTest >> #testFindThisMethod'.
	self
		assert:
			((candidates results collect: [:each | each content])
				allSatisfy: [ :aMethod | aMethod methodClass = StUnifiedProcessorTest ])
]
