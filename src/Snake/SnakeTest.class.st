Class {
	#name : #SnakeTest,
	#superclass : #TestCase,
	#classVars : [
		'snake'
	],
	#category : #Snake
}

{ #category : #tests }
SnakeTest >> testArrayLength [

	| a b point display |
	a := 4. b := 6.
	point := a@b.
	display := Snake createString: point.
	
	self assert: display size equals: [ (a + 2) * (b + 2). ]
]
