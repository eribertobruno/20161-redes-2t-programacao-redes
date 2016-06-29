require 'socket'

threads = []

for i in 1..10 do
	t = Thread.start(TCPSocket.new('localhost',2000)) do |socket|
		socket.puts("candidatos?")
		puts socket.gets.chomp
		socket.puts("votar #{rand(1..3)}")
		puts socket.gets.chomp
		socket.close
	end
	threads.push(t)
end

threads.each do |t|
	t.join
end
