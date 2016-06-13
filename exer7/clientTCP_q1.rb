require 'socket'

socket = TCPSocket.new('localhost',2000)
#enviar frase
puts socket.gets
socket.puts gets
#enviar palavra
puts socket.gets
socket.puts gets
#mostra resultado
puts socket.gets
