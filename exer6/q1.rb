require 'socket'

#Abre socket servidor TCP na porta 2000
s = TCPServer.new("localhost",2000)

#Aguarda e aceita a requisiçcao cliente
c = s.accept
puts "Aceitando a conexao"

#le a mensagem
msg = c.gets.chomp

#envia uma resposta para o cliente
c.puts(msg.upcase)

#fecha a conexao com o cliente
c.close

#fecha o socket do servidor
s.close
