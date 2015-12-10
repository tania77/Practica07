require 'spec_helper'

describe Biblioteca do
    it "debe existir una version" do
        version = "0.1.0"
    end
    
    before :all do
        @lista = Lista.new()
        
       @r1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide", "July 7, 2013", "Pragmatic Bookshelf", "4 edition", "The Facets of Ruby",["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
       @r2 = Revista.new(["Scott Chacon"], "Pro Git 2009th Edition", "August 27, 2009", ["ISSN-13: 978-1430218333", "ISSN-10: 1430218339"])
       @r3 = Electronico.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "February 4, 2008", "http://0596516177IS978_0596516178") 

    end
    context Libro do

        it "Titulo" do
            expect(@r1.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide")
        end
        it "Autor" do
            expect(@r1.autor).to eq(["Dave Thomas", "Andy Hunt", "Chad Fowler"])
        end

        it "Serie" do
            expect(@r1.serie).to eq("Pragmatic Bookshelf")
        end
        it "Editorial" do
            expect(@r1.editorial).to eq("4 edition")
        end
        it "Fecha" do
            expect(@r1.fecha).to eq("July 7, 2013")
        end
        it "Numero isbn" do
            expect(@r1.isbn).to eq(["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        end
    end
    
    context Lista do
        it "La lista debe tener cabeza y cola" do
            @lista.insert_principio(@r1)
            expect(@lista.head).to eq(@lista.tail)
            expect(@lista.tail).to eq(@lista.head)
            @lista.insert_principio(@r2)
        end
        
        it "Insertar elemento por el principio" do
            @lista.insert_principio(@r1)
            @lista.insert_principio(@r2)
            expect(@lista.head.value).to eq(@r2)
            expect(@lista.tail.value).to eq(@r1)
        end
        
        it "Insertar por el final" do
            #@lista.insert_final(@r1)
            @lista.insert_final(@r3)
            expect(@lista.head.value).to eq(@r2)
            expect(@lista.tail.value).to eq(@r3)
        end
        
        it "Se extrae el primer elemento de la lista." do
            #@lista.insert_primer_nodo(@r1)
            #@lista.insert_principio(@r2)
            @lista.borrar_principio
            expect(@lista.head.value).to eq(@r1)
            #expect(@r1.value).to eq(@r1)
        end
        
        it "Se extrae el ltimo elemento de la lista." do
            @lista.borrar_final
            expect(@lista.head.value).to eq(@r1)
        end
        
        it "Expectativa de herencia" do
            expect(@r2.is_a?Referencia).to eq(true)
        end
        
        it "Instancia" do
            expect(@r3.instance_of?Electronico).to eq(true)
        end
    end
    
    context "Pruebas referencia es Comparable" do
       it "Un libro es mayor que otro" do
          expect(@r3 < @r2).to eq(false) 
       end
       it "Un libro es igual a otro" do
          expect(@r1 == @r1).to eq(true) 
       end
    end
    
    context "Pruebas para lista Enumerable" do 
       it "Probar el first" do 
           @lista.insert_principio(@r1)
           expect(@lista.first).to eq(@lista.head)
       end 
       it "Probar all" do
          expect(@lista.all?{|i| i.length >= 3}).to eq(true) 
          expect(@lista.all?{|i| i.length < 1}).to eq(true)
       end
    end
    
    context "Pruebas de la clase Apa" do
        it "Se crea correctamente un objeto Apa" do
            
        end
    end 
end