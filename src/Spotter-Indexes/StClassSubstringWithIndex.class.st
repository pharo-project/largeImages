"
I am an iterator that uses a generator on top of the Class index of Aleph. 
I implement the substring search, allowing fulltext search.
"
Class {
	#name : #StClassSubstringWithIndex,
	#superclass : #StClassBeginsWithWithIndex,
	#category : #'Spotter-Indexes'
}

{ #category : #enumerating }
StClassSubstringWithIndex >> elementsDo: aValuable [

	self index 
		withAllValuesWithSubstring: text 
		do: [:aClass | aValuable value: (StClassEntry on: aClass)]
]
