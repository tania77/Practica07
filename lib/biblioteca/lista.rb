Nodo = Struct.new(:value, :siguiente, :anterior)
class Lista
   attr_accessor :head, :value, :siguiente, :tail, :anterior
   
   def initialize
       @head = Nodo.new(nil)
       @tail = @head
   end
   
   def insert_primer_nodo(nodo)
      nodo.siguiente = @head
      nodo.anterior = @tail
      @head = nodo
      @tail = nodo
   end
   
   def insert_principio(nodo)
      nodo.siguiente = @head
      @head.anterior = nodo
      @head = nodo
   end
   
   def borrar_principio
      @head = @head.siguiente
      @head.anterior = nil
   end
   
   def borrar_final
      @tail = @tail.anterior
      @tail.siguiente = nil
   end
   
   def insert_final(nodo)
      nodo.anterior = @tail
      @tail.siguiente = nodo
      @tail = nodo
   end
end