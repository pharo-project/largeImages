"
I am an iterator that uses a generator on top of the Class index of Aleph. 
I implement the beginsWith search
"
Class {
	#name : #SptClassBeginsWithWithIndex,
	#superclass : #StGenericGenerator,
	#instVars : [
		'text'
	],
	#category : #'GT-Spotter-Indexes'
}

{ #category : #enumerating }
SptClassBeginsWithWithIndex >> elementsDo: aValuable [

	self index 
		withAllValuesBeginningWith: text 
		do: [:aClass | aValuable value: (SptClassEntry on: aClass)]
]

{ #category : #initialization }
SptClassBeginsWithWithIndex >> filteringText: aString [

	text := aString.
	self reset
]

{ #category : #enumerating }
SptClassBeginsWithWithIndex >> index [

	^ AlpIndexManager current indexAt: #classes
]

{ #category : #initialization }
SptClassBeginsWithWithIndex >> initialize [

	text := ''.
	super initialize.

]
