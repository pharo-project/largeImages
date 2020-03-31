"
I am a source factory that uses the indexes.

I will return the classes and implementor sources that uses the AlephIndexes.
"
Class {
	#name : #SptSourceWithIndexFactory,
	#superclass : #SptSourceFactory,
	#category : #'GT-Spotter-Indexes'
}

{ #category : #'detecting implementations' }
SptSourceWithIndexFactory class >> buildIndexes [
	AlpIndexManager activate.
	GCConfiguration forLargeObjectAllocation
		activeDuring: [ AlpIndexManager current rebuildAll ]
]

{ #category : #'detecting implementations' }
SptSourceWithIndexFactory class >> isAvailable [ 

	^ AlpIndexManager isActive
]

{ #category : #'detecting implementations' }
SptSourceWithIndexFactory class >> priority [ 

	^ 10
]

{ #category : #'sources - classes' }
SptSourceWithIndexFactory >> classesBeginsWithSource [

	 ^ SptClassBeginsWithWithIndex new
]

{ #category : #'sources - classes' }
SptSourceWithIndexFactory >> classesSubstringSource [

	^ SptClassSubstringWithIndex new
]

{ #category : #'sources - implementors' }
SptSourceWithIndexFactory >> implementorsBeginsWithSource [

	^ SptImplementorsBeginsWithWithIndex new
]

{ #category : #'sources - implementors' }
SptSourceWithIndexFactory >> implementorsSubstringSource [

	^ SptImplementorsSubstringWithIndex new
]
