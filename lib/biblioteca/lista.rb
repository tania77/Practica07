Nodo = Struct.new(:value, :siguiente, :anterior)
class Lista
   include Enumerable
   attr_accessor :head, :value, :siguiente, :tail, :anterior
   
   def initialize
       @head = nil
       @tail = nil
   end
   
   def each
      while(@head != @tail)
         @head = @head.anterior
         yield @head
      end
   end
   
   def insert_principio(item)
      nodo = Nodo.new(item,nil,nil)
      if @head != nil
         @head.siguiente = nodo
      end
      nodo.anterior = @head
      @head = nodo
      if @tail == nil
         @tail = nodo
      end
   end
   
   def borrar_principio
      @head = @head.anterior
      @head.siguiente = nil
   end
   
   def borrar_final
      @tail = @tail.siguiente
      @tail.anterior = nil
   end
   
   def insert_final(item)
      nodo = Nodo.new(item,nil,nil)
      if @tail != nil
         @tail.anterior = nodo
      end
      nodo.siguiente = @tail
      @tail = nodo
      if @head == nil
         @head = nodo
      end
   end
end