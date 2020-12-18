"
I am the main class for a Snake game and its user interface (other classes shouldn't be directly accessed)

Created by etienne428 the 18th of december 2020
"
Class {
	#name : #Snake,
	#superclass : #Object,
	#instVars : [
		'window',
		'display'
	],
	#classVars : [
		'Instance'
	],
	#category : #Snake
}

{ #category : #accessing }
Snake class >> default [ 

	^ Instance ifNil: [ Instance := Snake new. ]
]

{ #category : #accessing }
Snake class >> launch [ 

	^ self default launch
]

{ #category : #create }
Snake >> createString: aPoint [

	| ii jj |
	display  = Array2D new.
	display numberOfColumns: aPoint x + 1.
	display numberOfRows: aPoint y + 1.
	
	ii := 1.
	1 to: display numberOfRows do:
		[ display at: ii at: 0 put: '_'. ii := ii + 1.].
	 
	ii := 1.
	2 to: display numberOfRows -1  do:
		[jj := 2.		
		display at: ii at: jj put: '|'. 
		jj := jj + 1.
		2 to: display numberOfColumns -1 do:
			[display at: ii at: jj put: '.'. 
			jj := jj + 1.].

		display at: ii at: jj put: '|'. 
		ii := ii + 1.
		jj := 2.
	].
		
	ii := 0.
	0 to: display numberOfRows do:
		[ display at: ii at: display numberOfColumns put: '_'. ii := ii + 1.].
	
	
]

{ #category : #create }
Snake >> launch [ 

	self createString: 4@6.
	self window.
	self window showDisplay: display.
]

{ #category : #accessing }
Snake >> window [

	^ window ifNil: [ window := SnakeWindow new. ]
]
