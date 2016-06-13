require 'socket'

#Cliente do jogo pedra, papel e tesoura.
#Para realizar uma partida, execute o servidor e em seguida execute dois clientes
hostname = 'localhost'
port = 2000
socket = TCPSocket.new(hostname, port)

acoes = ['pedra', 'papel', 'tesoura']
acao = acoes[rand(0..2)] #sorteia a ação do cliente
puts("Escolhi #{acao}")

socket.puts(acao)
puts('Resposta do servidor: ')
puts socket.gets

socket.close
