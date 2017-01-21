books := Dictionary new.
b := {'author' -> 'Douglas Adams'. 
      'title'  -> 'The Hitchhiker's Guide to the Galaxy'} asDictionary.
books at: 42 put: b.
        
teapot := Teapot configure: {
    #defaultOutput -> #json. 
    #port -> 1701. 
    #debugMode -> true.
}.

teapot
    GET: '/books' -> books;
    PUT: '/books/<id>' -> [:req | | book |
        book := {'author' -> (req at: #author). 
                 'title'  -> (req at: #title)} asDictionary.
        books at: (req at: #id) put: book];     
    DELETE: '/books/<id>' -> [:req | books removeKey: (req at: #id)];
    exception: KeyNotFound -> (TeaResponse notFound body: 'No such book');
    start.
teapot server register; logToTranscript .
NonInteractiveTranscript stdout install.

Smalltalk snapshot: true andQuit: true.
