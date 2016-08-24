as yet unclassified
deleteBook: req
	| book |
	book := {('author' -> (req at: #author)).
	('title' -> (req at: #title))} asDictionary.
"	^ books at: (req at: #id) put: book"