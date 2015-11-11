#encodign: utf-8
require 'spec_helper'
#require 'biblioteca'

describe Biblioteca do
    it "debe existir una version" do
        version = "0.1.0"
    end
    
    before :all do
        @l1 = Libro.new("Dave Thomas, Andy Hunt, Chad Fowler.", "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
Guide.",nil, "(The Facets of Ruby). Pragmatic Bookshelf;", "4 edition", "(July 7, 2013).", "ISBN-13: 978-1937785499.",
"ISBN-10: 1937785491.")
#        @l2 = Libro.new("Scott Chacon.", "Pro Git 2009th Edition. (Pro). Apress; 2009 edition "(August 27, 2009).", "ISBN-13: 978-
# 1430218333.", "ISBN-10: 1430218339.")
    end
    before :all do 
       @n1 = Nodo.new(@l1, nil) 
    end
    before :all do 
       @lista1 = Lista.new(nil) 
    end
    context Libro do
#        before :each do
#            @l1 = Libro.new("titulo", "autor",  "serie", "editorial", "nedicion", "fecha", "isbn10", "isbn13")
#        end

        it "debe existir un titulo" do
            @l1.titulo.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’
Guide.")
        end
        it "debe existir al menos un autor" do
            @l1.autor.should eq("Dave Thomas, Andy Hunt, Chad Fowler.")
        end

        it "debe existir o no una serie" do
            @l1.serie.should eq nil 
        end
        it "debe existir una editorial" do
            @l1.editorial.should eq("(The Facets of Ruby). Pragmatic Bookshelf;") 
            @l1.nedicion.should eq("4 edition") 
        end
        it "debe existir una fecha de publicacion" do
            @l1.fecha.should eq("(July 7, 2013).") 
        end
        it "debe haber almenos un numero isbn" do
            @l1.isbn10.should eq("ISBN-10: 1937785491.")
            @l1.isbn13.should eq("ISBN-13: 978-1937785499.")
        end
    end
    
    context Nodo do
#        before :each do
#            @n1 = Nodo.new(@l1, nil)
#        end
        it "debe tener un libro" do
            @n1.libro.should_not eq nil
        end
        it "el puntero al siguiente libro debe ser nulo" do
           @n1.siguiente.should eq nil 
        end
    end
    
    context Lista do
#       before :each do
#          @lista1 = Lista.new(nil) 
#       end
       it "debe haber un head" do 
           @lista1.head.should eq nil
       end
       it "Se inserta correctamente un nodo" do 
          @lista1.insert(@n1)
          @lista1.head.should_not eq nil 
       end
    end
end
