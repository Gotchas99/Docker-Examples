as yet unclassified
setupRoutes
	teapot
		GET: '/books' -> [ :req | self getBooks: req ];
		output: #json;
		PUT: '/books/<id>' -> [ :req | self putBook: req ];
		DELETE: '/books/<id>' -> [ :req | self deleteBook: req ];
		exception: KeyNotFound -> (TeaResponse notFound body: 'No such book')