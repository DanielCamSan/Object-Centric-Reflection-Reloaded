Class {
	#name : #MSTest,
	#superclass : #TestCase,
	#instVars : [
		'proxy',
		'metaobject',
		'aClassTest'
	],
	#category : #'Reflectivity-Object-Centric-Tests-tests'
}

{ #category : #running }
MSTest >> setUp [

	aClassTest := ROCTestClass new.
	aClassTest var1: 1.
	aClassTest var2: 2.
	aClassTest collection: OrderedCollection new.
	aClassTest result: 0.
	aClassTest enableMop.
]

{ #category : #running }
MSTest >> testMessageSendInAssignmentBefore [

	aClassTest beforeAnyMessageSendDo: [ 
		aClassTest result: aClassTest result + 1 ].
	self assert: aClassTest assigningValues equals: 3.
	self assert: aClassTest var1 equals: 2.
	self assert: aClassTest var2 equals: 4.
	self assert: aClassTest result equals: 4
]

{ #category : #running }
MSTest >> testMessageSendInAssignmentInstead [

	aClassTest insteadAnyMessageSendDo: [ 
		aClassTest result: aClassTest result + 1 ].
	self assert: aClassTest assigningValues equals: 3.
	self assert: aClassTest var1 equals: 2.
	self assert: aClassTest var2 equals: 4.
	self assert: aClassTest result equals: 4
]

{ #category : #running }
MSTest >> testMessageSendInAssignmentInsteadOneMessageSend [

	aClassTest insteadAnyMessageSendDo: [ 
		aClassTest result: aClassTest result + 1 ].
	self assert: aClassTest oneMessageSend equals: 3.
	self assert: aClassTest var1 equals: 2.
	self assert: aClassTest var2 equals: 4.
	self assert: aClassTest result equals: 4
]
