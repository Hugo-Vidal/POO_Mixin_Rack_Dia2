module Formula
    def perimetro()
        if @lado == nil
            print "Perimetro = #{(@largo + @ancho)*2}\n"
        else
            print "Perimetro = #{@lado*4}\n"
        end
    end
    def area()
        if @lado == nil
            print "Area = #{@largo*@ancho}\n"
        else
            print "Area = #{@lado**2}\n"
        end
    end
end

class Rectangulo
    include Formula
    def initialize(largo, ancho)
        @largo = largo
        @ancho = ancho
    end
    def lados
        print "Largo = #{@largo}, Ancho = #{@ancho}\n"
    end
end

class Cuadrado
    include Formula
    def initialize(lado)
        @lado = lado
    end
    def lados
        print "Lados = #{@lado}}\n"
    end
end

Rectangulo.new(3, 4).area
Rectangulo.new(3, 4).perimetro

Cuadrado.new(3).area
Cuadrado.new(3).perimetro