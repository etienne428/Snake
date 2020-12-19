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

	| size xvar yvar stringtoprint |
	xvar := aPoint x.
	yvar := aPoint y.
	size := xvar * yvar.

	display  := Array2D new: size.
	display numberOfColumns: aPoint x + 1.
	display numberOfRows: aPoint y + 1.

	stringtoprint := size asString , ' ', display numberOfColumns asString , ' ', display numberOfRows asString .

	"1 to: display numberOfColumns  do:
		[ :ii | display at: ii at: 1 put: '_'.].
	 
	1 to: display numberOfRows do:
		[ :ii | display at: ii at: 1 put: '|'. 
		2 to: display numberOfColumns -1 do:
			[ :jj | display at: ii at: jj put: '.'.].

		display at: ii at: display numberOfRows + 1 put: '|'. ].
		

	1 to: display numberOfColumns do:
		[ :ii | display at: ii at: display numberOfColumns put: '_'.]."
		
"	Transcript open; clear; show: stringtoprint; cr; close."
	^ display 	
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
