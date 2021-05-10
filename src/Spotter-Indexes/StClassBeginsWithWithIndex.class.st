"
I am an iterator that uses a generator on top of the Class index of Aleph. 
I implement the beginsWith search
"
Class {
	#name : #StClassBeginsWithWithIndex,
	#superclass : #StGenericGenerator,
	#instVars : [
		'text'
	],
	#category : #'Spotter-Indexes'
}

{ #category : #enumerating }
StClassBeginsWithWithIndex >> elementsDo: aValuable [

	self index 
		withAllValuesBeginningWith: text 
		do: [:aClass | aValuable value: (StClassEntry on: aClass)]
]

{ #category : #initialization }
StClassBeginsWithWithIndex >> filteringText: aString [

	text := aString.
	self reset
]

{ #category : #enumerating }
StClassBeginsWithWithIndex >> index [

	^ AlpIndexManager current indexAt: #classes
]

{ #category : #initialization }
StClassBeginsWithWithIndex >> initialize [

	text := ''.
	super initialize.

]
