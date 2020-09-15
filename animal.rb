module Habilidades

    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador

        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante

        def caminar
            'Puedo caminar!'
        end
    end

end

module Alimentacion

    module Herbivoro
        def comerH
            'Puedo comer plantas!'
        end
    end
    
    module Carnivoro
        def comerC
            'Puedo comer carne!'
        end
    end
end

class Animal

    attr_reader :nombre

    def initialize(nombre)
        @nombre = nombre
    end

end

class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Habilidades::Nadador

    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end

class Mamifero < Animal
    include Habilidades::Volador
    include Habilidades::Nadador
    include Habilidades::Caminante

    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
end

class Insecto
    include Habilidades::Volador
    include Habilidades::Caminante

    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
end

class Pinguino < Ave
end

class Paloma < Ave
end

class Pato < Ave
end

class Moscas < Insecto
end

class Mariposa < Insecto
end

#-------------------
pinguino1 = Pinguino.new("PequeñoPing")
puts pinguino1.nombre
puts pinguino1.nadar
puts pinguino1.sumergir
puts pinguino1.comerC

paloma1 = Paloma.new("VoladoraPe")
puts paloma1.nombre
puts paloma1.volar
puts paloma1.aterrizar
puts paloma1.comerH

pato1 = Pato.new("NadadorPa")
puts pato1.nombre
puts pato1.nadar
puts pato1.caminar
puts pato1.comerC

mosca1 = Moscas.new()
puts mosca1.volar
puts mosca1.aterrizar
puts mosca1.comerC

mariposa1 = Mariposa.new()
puts mariposa1.volar
puts mariposa1.aterrizar
puts mariposa1.comerH