"
I am an iterator that uses a generator on top of the Implementors index of Aleph. 
I implement the substring search providing full-text search on the index.
"
Class {
	#name : #StImplementorsSubstringWithIndex,
	#superclass : #StImplementorsBeginsWithWithIndex,
	#category : #'Spotter-Indexes'
}

{ #category : #enumerating }
StImplementorsSubstringWithIndex >> elementsDo: aValuable [

	self index 
		withAllValuesWithSubstring: text 
		do: [:aMethod | aValuable value: (StMethodEntry on: aMethod)]
]
