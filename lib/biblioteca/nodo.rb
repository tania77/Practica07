class Nodo
    
    attr_accessor :libro, :siguiente
    
    def initialize(libro, siguiente)
        @libro = libro
        @siguiente = siguiente
    end
end