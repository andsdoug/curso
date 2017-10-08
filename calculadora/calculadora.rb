
require 'logger'

@logger = Logger.new(STDOUT)
@logger.level = Logger::DEBUG

def soma(valor1,valor2)
    @logger.info("Realizando soma entre o valores #{valor1} e #{valor2}")
    puts "Resultado: #{valor1 + valor2}"
end

def subtracao(valor1,valor2)
    @logger.info("Realizando subtracao entre o valores #{valor1} e #{valor2}")
    puts "Resultado: #{valor1 - valor2}"
end

def divisao(valor1,valor2)
    @logger.info("Realizando divisao entre o valores #{valor1} e #{valor2}")
    puts "Resultado: #{valor1 / valor2}"
end

def multiplicacao(valor1,valor2)
    @logger.info("Realizando multiplicacao entre o valores #{valor1} e #{valor2}")
    puts "Resultado: #{valor1 * valor2}"
end
