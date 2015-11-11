class Nodo
    
    attr_accessor :libro
    
    def initialize(libro)
        @libro = Libro.new("Dave Thomas, Andy Hunt, Chad Fowler.", "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
Guide.",nil, "(The Facets of Ruby). Pragmatic Bookshelf;", "4 edition", "(July 7, 2013).", "ISBN-13: 978-1937785499.",
"ISBN-10: 1937785491.")
    end
end