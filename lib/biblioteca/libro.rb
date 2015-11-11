#require "biblioteca/version"

class Libro
	
	attr_accessor :titulo, :autor,  :serie, :editorial, :nedicion, :fecha, :isbn10, :isbn13
	
	def initialize (autor, titulo, serie, editorial, nedicion, fecha, isbn13, isbn10)
	@titulo = titulo
	@autor = autor
	@serie = serie
	@editorial = editorial
	@nedicion = nedicion
	@fecha = fecha
  	@isbn10 = isbn10
	@isbn13 = isbn13
	end

end