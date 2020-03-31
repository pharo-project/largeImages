"
I am an iterator that uses a generator on top of the Implementors index of Aleph. 
I implement the substring search providing full-text search on the index.
"
Class {
	#name : #SptImplementorsSubstringWithIndex,
	#superclass : #SptImplementorsBeginsWithWithIndex,
	#category : #'GT-Spotter-Indexes'
}

{ #category : #enumerating }
SptImplementorsSubstringWithIndex >> elementsDo: aValuable [

	self index 
		withAllValuesWithSubstring: text 
		do: [:aMethod | aValuable value: (SptMethodEntry on: aMethod)]
]
