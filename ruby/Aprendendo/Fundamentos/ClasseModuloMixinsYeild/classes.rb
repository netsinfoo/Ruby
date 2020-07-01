#Este arquivo serve de exemplo para
#uso de classes.

class Pessoa
    def fala
        puts "Estou falando!!"
    end
end

class Estudante < Pessoa
    def estuda
        puts "Estou estudando"
    end    
end

class Atleta < Pessoa
    def treina
        puts "Estou treinado"
    end
end