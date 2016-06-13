require 'socket'

serverSocket = TCPServer.new(2000)

puts 'servidor iniciado'

loop{
	clientSocket = serverSocket.accept
	clientSocket.puts 'envie uma frase'
	puts 'receber a frase'
	frase = clientSocket.gets
	puts "frase recebida: " + frase
	clientSocket.puts 'envie uma palavra'
	puts 'receber palavra'
	palavra = clientSocket.gets
	puts "palavra recebida: " + palavra
	c = frase.split.count(palavra.split[0])
	clientSocket.puts "A frase contem #{c} ocorrencia da palavra"
}
