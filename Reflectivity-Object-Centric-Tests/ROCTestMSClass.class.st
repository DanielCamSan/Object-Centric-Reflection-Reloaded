Class {
	#name : #ROCTestMSClass,
	#superclass : #Object,
	#instVars : [
		'result',
		'var1',
		'var2',
		'collection',
		'counter'
	],
	#category : #'Reflectivity-Object-Centric-Tests-utils'
}

{ #category : #accessing }
ROCTestMSClass >> assigningValues [

	self var1SimpleAsssignment.
	var1 := self returningValue.
	var2 := self returningValue + 2.
	^ self returningValue + 1
]

{ #category : #accessing }
ROCTestMSClass >> collection [

	^ collection
]

{ #category : #accessing }
ROCTestMSClass >> collection: anObject [

	collection := anObject
]

{ #category : #accessing }
ROCTestMSClass >> counter [

	^ counter
]

{ #category : #accessing }
ROCTestMSClass >> counter: anObject [

	counter := anObject
]

{ #category : #accessing }
ROCTestMSClass >> oneMessageSend [
	self var1SimpleAsssignment.
]

{ #category : #accessing }
ROCTestMSClass >> result [

	^ result
]

{ #category : #accessing }
ROCTestMSClass >> result: anObject [

	result := anObject
]

{ #category : #accessing }
ROCTestMSClass >> returningValue [

	^ 2
]

{ #category : #accessing }
ROCTestMSClass >> var1 [

	^ var1
]

{ #category : #accessing }
ROCTestMSClass >> var1: anObject [

	var1 := anObject
]

{ #category : #accessing }
ROCTestMSClass >> var1SimpleAsssignment [
	var1 := 7
]

{ #category : #accessing }
ROCTestMSClass >> var2 [

	^ var2
]

{ #category : #accessing }
ROCTestMSClass >> var2: anObject [

	var2 := anObject
]
