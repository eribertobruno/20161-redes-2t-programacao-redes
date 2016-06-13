require 'socket'

socketServer = TCPServer.new(2000)
puts "servidor iniciado"
a = ["par","impar"]
client = socketServer.accept
puts "cliente conectado"
client.puts "escolha par ou impar:"
x = client.gets.split[0]
client.puts "escolha um numero de 0 a 5"
nc = client.gets.to_i
ns = rand(0..5)
g = (nc+ns)%2
if a[g] == x
	client.puts "you(#{nc}) comp(#{ns}) total(#{nc+ns}) = (#{a[g]}) vc ganhou :D"
else
	client.puts "you(#{nc}) comp(#{ns}) total(#{nc+ns}) = (#{a[g]}) vc perdeu :/"
end
client.close
