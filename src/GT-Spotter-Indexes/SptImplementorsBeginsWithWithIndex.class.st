"
I am an iterator that uses a generator on top of the Implementors index of Aleph. 
I implement the beginsWith search
"
Class {
	#name : #SptImplementorsBeginsWithWithIndex,
	#superclass : #StGenericGenerator,
	#instVars : [
		'text'
	],
	#category : #'GT-Spotter-Indexes'
}

{ #category : #enumerating }
SptImplementorsBeginsWithWithIndex >> elementsDo: aValuable [

	self index 
		withAllValuesBeginningWith: text 
		do: [:aMethod | aValuable value: (SptMethodEntry on: aMethod)]
]

{ #category : #initialization }
SptImplementorsBeginsWithWithIndex >> filteringText: aString [

	text := aString.
	self reset
]

{ #category : #enumerating }
SptImplementorsBeginsWithWithIndex >> index [

	^ AlpIndexManager current indexAt: #implementors
]

{ #category : #initialization }
SptImplementorsBeginsWithWithIndex >> initialize [

	text := ''.
	super initialize.

]
