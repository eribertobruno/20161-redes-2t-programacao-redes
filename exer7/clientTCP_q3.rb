require 'socket'

socket = TCPSocket.new('localhost',2000)

puts socket.gets
socket.puts gets

puts socket.gets
socket.puts gets

puts socket.gets
