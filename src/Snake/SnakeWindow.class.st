"
I am the window used to display the game snake. 

I am accessed by Snake.

Created by Etienne428
"
Class {
	#name : #SnakeWindow,
	#superclass : #Object,
	#traits : 'TTranscript',
	#classTraits : 'TTranscript classTrait',
	#category : #Snake
}

{ #category : #'instance creation' }
SnakeWindow >> open [ 

	^ self open
]

{ #category : #streaming }
SnakeWindow >> showDisplay: a2DArray [
	
	self clear.

	1 to: a2DArray numberOfRows do: 
		[ :ii | 1 to: a2DArray numberOfColumns do: 
			[ :jj | self nextPut: [a2DArray at: ii at: jj.] ].
		self cr].
]
