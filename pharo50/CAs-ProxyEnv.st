Object subclass: #Proxy
	instanceVariableNames: 'pxString user pwd host port'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CAs-ProxyEnv'!

!Proxy methodsFor: 'accessing' stamp: 'ChristerAssmundsson 9/13/2016 15:24'!
host: anObject
	host := anObject! !

!Proxy methodsFor: 'accessing' stamp: 'ChristerAssmundsson 9/13/2016 15:25'!
user: anObject
	user := anObject! !

!Proxy methodsFor: 'accessing' stamp: 'ChristerAssmundsson 9/13/2016 15:24'!
host
	^ host! !

!Proxy methodsFor: 'accessing' stamp: 'ChristerAssmundsson 9/13/2016 15:24'!
pwd: anObject
	pwd := anObject! !

!Proxy methodsFor: 'accessing' stamp: 'ChristerAssmundsson 9/13/2016 15:24'!
pwd
	^ pwd! !

!Proxy methodsFor: 'accessing' stamp: 'ChristerAssmundsson 9/13/2016 15:24'!
port: anObject
	port := anObject! !

!Proxy methodsFor: 'accessing' stamp: 'ChristerAssmundsson 9/13/2016 15:24'!
port
	^ port! !

!Proxy methodsFor: 'accessing' stamp: 'ChristerAssmundsson 9/13/2016 15:25'!
user
	^ user! !


!Proxy methodsFor: 'as yet unclassified' stamp: 'ChristerAssmundsson 9/14/2016 12:58'!
parse: aString
	| tokens |
	tokens := (aString findTokens: ':@/') reverse.
	port := tokens first asInteger.
	host := tokens second.
	tokens size > 3
		ifTrue: [ pwd := tokens third.
			user := tokens fourth ].
	^ self! !

!Proxy methodsFor: 'as yet unclassified' stamp: 'ChristerAssmundsson 9/13/2016 15:25'!
hasUser
	^ user isNotNil! !

!Proxy methodsFor: 'as yet unclassified' stamp: 'ChristerAssmundsson 9/13/2016 15:26'!
hasPwd
	^ pwd isNotNil! !


Object subclass: #ProxyEnv
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CAs-ProxyEnv'!
"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

ProxyEnv class
	instanceVariableNames: ''!

!ProxyEnv class methodsFor: 'as yet unclassified' stamp: 'ChristerAssmundsson 9/13/2016 11:35'!
shutDown: quitting
	"Force to detect filesystem after image restart"
"	self reset"! !

!ProxyEnv class methodsFor: 'as yet unclassified' stamp: 'ChristerAssmundsson 9/14/2016 09:27'!
startUp: resuming
	resuming
		ifTrue: [ self checkProxyEnv.
			Transcript crShow:  'Proxy init.' ]! !

!ProxyEnv class methodsFor: 'as yet unclassified' stamp: 'ChristerAssmundsson 9/13/2016 17:33'!
setProxy: aPxString
	| px |
	NetworkSystemSettings useHTTPProxy: true.
	px := Proxy new parse: aPxString.
	NetworkSystemSettings httpProxyServer: px host.
	NetworkSystemSettings httpProxyPort: px port.
	px hasUser
		ifTrue: [ NetworkSystemSettings useNetworkAuthentification: true.
			NetworkSystemSettings proxyUser: px user.
			NetworkSystemSettings proxyPassword: px pwd ]
		ifFalse: [ NetworkSystemSettings useNetworkAuthentification: false ]! !

!ProxyEnv class methodsFor: 'as yet unclassified' stamp: 'ChristerAssmundsson 9/14/2016 09:27'!
checkProxyEnv
	OSEnvironment current
		at: 'PROXY_URL'
		ifPresent: [ :px | self setProxy: px ]
		ifAbsent: [ NetworkSystemSettings useHTTPProxy: false ]! !

!ProxyEnv class methodsFor: 'as yet unclassified' stamp: 'ChristerAssmundsson 9/13/2016 11:31'!
initialize
	SessionManager default registerSystemClassNamed: self name! !

ProxyEnv initialize!
