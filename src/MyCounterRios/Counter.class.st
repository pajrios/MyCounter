"
Counter is a simple concrete class which supports incrementing and decrementing counter.
Its API is: 
	- decrement, increment
	- count
Its creation API is message startingAt: 
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounterRios
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^self new count: anInteger
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: anObject [
	count := anObject
]

{ #category : #accessing }
Counter >> decrement [ 
	count := count - 1
]

{ #category : #accessing }
Counter >> increment [ 
	count := count + 1.
]

{ #category : #initialization }
Counter >> initialize [ 
	super initialize.
	count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
	aStream cr
]
