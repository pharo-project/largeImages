"
I am a source factory that uses the indexes.

I will return the classes and implementor sources that uses the AlephIndexes.
"
Class {
	#name : #StSourceWithIndexFactory,
	#superclass : #StSourceFactory,
	#category : #'Spotter-Indexes'
}

{ #category : #'detecting implementations' }
StSourceWithIndexFactory class >> buildIndexes [
	AlpIndexManager activate.

]

{ #category : #'detecting implementations' }
StSourceWithIndexFactory class >> isAvailable [ 

	^ AlpIndexManager isActive
]

{ #category : #'detecting implementations' }
StSourceWithIndexFactory class >> priority [ 

	^ 10
]

{ #category : #'sources - classes' }
StSourceWithIndexFactory >> classesBeginsWithSource [

	 ^ StClassBeginsWithWithIndex new
]

{ #category : #'sources - classes' }
StSourceWithIndexFactory >> classesSubstringSource [

	^ StClassSubstringWithIndex new
]

{ #category : #'sources - implementors' }
StSourceWithIndexFactory >> implementorsBeginsWithSource [

	^ StImplementorsBeginsWithWithIndex new
]

{ #category : #'sources - implementors' }
StSourceWithIndexFactory >> implementorsSubstringSource [

	^ StImplementorsSubstringWithIndex new
]
