require 'socket'

socket = TCPSocket.new('localhost',2000)
socket.puts("resultado 123456")
puts socket.gets
