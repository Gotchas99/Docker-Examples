as yet unclassified
initialize
	Teapot stopAll.
	teapot := self configureTeapot.
	self setupRoutes.
	teapot server logToTranscript
	"	NonInteractiveTranscript stdout install"
