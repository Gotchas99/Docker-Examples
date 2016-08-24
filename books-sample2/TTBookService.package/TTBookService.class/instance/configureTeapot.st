as yet unclassified
configureTeapot
	^ Teapot
		configure:
			{(#defaultOutput -> #json).
			(#port -> 1701).
			(#debugMode -> true)}