class Person
    attr_accessor :first, :last, :age

    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end

    def Pregunta
    end

    def Saludo
    end
end

class Student < Person

    attr_accessor :first, :last, :age

    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def Pregunta
        puts "Aquí es " + Accions::Talk + "?"
    end

    def Saludo
        puts Accions::Introduce::Saludar + "profesor. " + Accions::Introduce::Nombre + @first_name + " " + @last_name + "."
    end
    
end

class Teacher < Person

    attr_accessor :first, :last, :age

    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def Pregunta
        puts "Bienvenidos a " + Accions::Talk + "!"
    end
    #"Bienvenidos a la clase de programación con Ruby!"
    def Saludo
        puts Accions::Introduce::Saludar + " alumnos. " + Accions::Introduce::Nombre + @first_name + " " + @last_name + "."
    end
    #Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
end

class Parent < Person

    attr_accessor :first, :last, :age

    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def Pregunta
        puts "Aquí es la reunión de apoderados?"
    end
    #"Aquí es la reunión de apoderados?"
    
    def Saludo
        puts Accions::Introduce::Saludar + ". Soy uno de los apoderados." + Accions::Introduce::Nombre + @first_name + " " + @last_name + "."
    end
    #"Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
end

module Accions

    Talk = "la clase de programación con Ruby"

    module Introduce
        
        Saludar = "Hola "
        
        Nombre = "Mi nombre es "
    end
end

alumno = Student.new("Juan","Muñoz", 31)
puts alumno.Pregunta
puts alumno.Saludo

profesor = Teacher.new("Jose","Ramirez",50)
puts profesor.Pregunta
puts profesor.Saludo

padres = Parent.new("Manuel","Muñoz",45)
puts padres.Pregunta
puts padres.Saludo