"
I am an iterator that uses a generator on top of the Class index of Aleph. 
I implement the substring search, allowing fulltext search.
"
Class {
	#name : #SptClassSubstringWithIndex,
	#superclass : #SptClassBeginsWithWithIndex,
	#category : #'GT-Spotter-Indexes'
}

{ #category : #enumerating }
SptClassSubstringWithIndex >> elementsDo: aValuable [

	self index 
		withAllValuesWithSubstring: text 
		do: [:aClass | aValuable value: (SptClassEntry on: aClass)]
]
