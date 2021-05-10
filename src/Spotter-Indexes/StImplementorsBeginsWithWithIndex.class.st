"
I am an iterator that uses a generator on top of the Implementors index of Aleph. 
I implement the beginsWith search
"
Class {
	#name : #StImplementorsBeginsWithWithIndex,
	#superclass : #StGenericGenerator,
	#instVars : [
		'text'
	],
	#category : #'Spotter-Indexes'
}

{ #category : #enumerating }
StImplementorsBeginsWithWithIndex >> elementsDo: aValuable [

	self index 
		withAllValuesBeginningWith: text 
		do: [:aMethod | aValuable value: (StMethodEntry on: aMethod)]
]

{ #category : #initialization }
StImplementorsBeginsWithWithIndex >> filteringText: aString [

	text := aString.
	self reset
]

{ #category : #enumerating }
StImplementorsBeginsWithWithIndex >> index [

	^ AlpIndexManager current indexAt: #implementors
]

{ #category : #initialization }
StImplementorsBeginsWithWithIndex >> initialize [

	text := ''.
	super initialize.

]
