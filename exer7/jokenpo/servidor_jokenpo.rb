require 'socket'

#Servidor do jogo pedra, papel e tesoura.
#O servidor controla apenas uma partida, encerrado
#sua execução após o término da mesma.
serverSocket = TCPServer.new(2000)

puts('Aguardando conexoes')
client1 = serverSocket.accept
puts('Cliente 1 conectado')
client2 = serverSocket.accept
puts('Cliente 2 conectado')

acao1 = client1.gets.chomp
acao2 = client2.gets.chomp

if(acao1 == 'pedra' && acao2 == 'tesoura' || 
   acao1 == 'tesoura' && acao2 == 'papel' ||
   acao1 == 'papel' && acao2 == 'pedra')
  client1.puts('Voce venceu!')
  client2.puts('Voce perdeu!')
  puts('1 venceu')
elsif(acao2 == 'pedra' && acao1 == 'tesoura' || 
   acao2 == 'tesoura' && acao1 == 'papel' ||
   acao2 == 'papel' && acao1 == 'pedra')
  client2.puts('Voce venceu!')
  client1.puts('Voce perdeu!')
  puts('2 venceu')
else
  client1.puts('Empatou')
  client2.puts('Empatou')
  puts('Empatou')
end

client1.close
client2.close