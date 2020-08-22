

class Perguntas
    attr_accessor :pergunta, :resposta
    def initialize(pergunta, resposta)
        @pergunta = pergunta
        @resposta = resposta
    end
end


pergunta1 = "Qual a capital da Aústria\n \n(a)Vienna (b)Amsterdam (c)Oslo"
pergunta2 = "Qual a cor do mar?\n \n(a)Rosa (b)Amarelo (c)Azul"
pergunta3 = "Quem é melhor?\n \n(a)Messi (b)CR7"


perguntas = [
    Perguntas.new(pergunta1, 'a'),
    Perguntas.new(pergunta2, 'c'),
    Perguntas.new(pergunta3, 'a')
]



def jogo_perguntas(perguntas)

    resposta = ''
    placar = 0

    for pergunta in perguntas
        puts pergunta.pergunta
        resposta = gets.chomp
        if resposta == pergunta.resposta
         placar += 1
        end
    end 

    puts "Tu acertou #{placar.to_s} de #{perguntas.length.to_s} perguntas!"
end

jogo_perguntas(perguntas)
