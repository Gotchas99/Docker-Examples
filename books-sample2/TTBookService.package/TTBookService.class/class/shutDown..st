as yet unclassified
shutDown: isImageQuitting
	"Our system shutDown hook: stop all servers"

	isImageQuitting
		ifTrue: [ Teapot stopAll ]