#require "biblioteca/version"

class Referencia
	
	attr_accessor :titulo, :autor, :fecha
	
	def initialize (autor, titulo, fecha)
		@titulo = titulo
		@autor = autor
		@fecha = fecha
	end
end
class Libro < Referencia
    
    attr_accessor :serie, :editorial, :edicion, :isbn
    
    def initialize(autor, titulo, fecha, serie, editorial, edicion, isbn)
        super(autor, titulo, fecha)
        @serie = serie
        @editorial = editorial
        @edicion = edicion
        @isbn = isbn
    end
end
class Revista < Referencia
    
    attr_accessor :issn
    
    def initialize(autor, titulo, fecha, isnn)
        super(autor, titulo, fecha)
        @isnn = issn
    end
end

class Electronico < Referencia
    
    attr_accessor :url
    
    def initialize(autor, titulo, fecha, url)
        super(autor, titulo, fecha)
        @url = url
    end
end