as yet unclassified
getBooks: req
	| books ret |
	books := TTBook allBooks.
	ret := Dictionary new.
	books
		do: [ :b | ret at: b id put: (Dictionary with: 'author' -> b author with: 'title' -> b title) ].
	"	book := {('author' -> (req at: #author)).
	('title' -> (req at: #title))} asDictionary.
"	"	^ books at: (req at: #id) put: book"
	^ ret