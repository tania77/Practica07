class Lista
   attr_accessor :head 
   
   def initialize(head)
       @head = head
   end
   def insert(nodo)
      nodo.siguiente = @head
      @head = nodo
   end
end