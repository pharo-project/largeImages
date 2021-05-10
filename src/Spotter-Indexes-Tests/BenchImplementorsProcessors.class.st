"
I am a test class to measure the speed of the implementation using the indexes.
"
Class {
	#name : #BenchImplementorsProcessors,
	#superclass : #Object,
	#category : #'Spotter-Indexes-Tests'
}

{ #category : #benchmarking }
BenchImplementorsProcessors >> benchBeginsWith [
	<script: 'self new benchBeginsWith'>

	"Ensure index is calculated"
	| withIndex withoutIndex |
	withIndex := StImplementorsBeginsWithWithIndex new.
	withIndex index.

	withoutIndex := (SptImplementorsIterator new
		collect: [ :e | SptMethodEntry on: e ]) asBeginsWithFilter.
		
	(String streamContents: [ :aWriteStream | 
			self benchSearchOf: 'as' withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream.
			self benchSearchOf: 'asUrl' withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream.
			self benchSearchOf: 'asdfghjkli' withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream.
			self benchSearchOf: 'test' withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream.
		]) inspect.	
]

{ #category : #benchmarking }
BenchImplementorsProcessors >> benchSearchOf: aString withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream [

	| results |

	results := { withIndex. withoutIndex } collect: [ :anIterator |  
			[anIterator reset. anIterator filteringText: aString. anIterator next: 20] bench].
	
	aWriteStream
			<< 'Searching:';
			print: aString; tab; tab; tab;
			<< 'With Index:'; 
			<< (results at: 1); tab;	
			<< 'Without Index:'; 
			<< (results at: 2); cr.

]

{ #category : #benchmarking }
BenchImplementorsProcessors >> benchSubstringWith [
	<script: 'self new benchSubstringWith'>

	"Ensure index is calculated"
	| withIndex withoutIndex |
	withIndex := StImplementorsSubstringWithIndex new.
	withIndex index.

	withoutIndex := (SptImplementorsIterator new
		collect: [ :e | SptMethodEntry on: e ]) asSubstringFilter.
		
	(String streamContents: [ :aWriteStream | 
			self benchSearchOf: 'as' withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream.
			self benchSearchOf: 'asUrl' withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream.
			self benchSearchOf: 'asdfghjkli' withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream.
			self benchSearchOf: 'test' withIndex: withIndex withoutIndex: withoutIndex on: aWriteStream.
		]) inspect.	
]
