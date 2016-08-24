as yet unclassified
startUp: resuming
	"Our system startUp hook: start all servers we manage.
	We do this using deferred startup actions to allow normal error handling."

	| session |
	resuming
		ifFalse: [ ^ self ].
	self environment
		at: #SessionManager
		ifPresent: [ :manager | session := manager default currentSession ]
		ifAbsent: [ session := Smalltalk ].
	session
		addDeferredStartupAction: [ self initDb.
			self startServer ]