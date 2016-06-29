require 'socket'

server = TCPServer.new(2000)
puts 'inicando servidor'

candidatos = ["paulo","pedro","ana"]
votos = [0,0,0]
senha = "123456"
loop {
	Thread.start(server.accept) do |client|
		msg = client.gets.chomp.split
		puts msg
		if msg[0] == "candidatos?" then
			client.puts "1 #{candidatos[0]}#2 #{candidatos[1]}#3 #{candidatos[2]}"
			msg = client.gets.chomp.split
			puts msg
		end
		if	msg[0] == "votar"
			voto = msg[1].to_i
			if voto == 1 || voto == 2 || voto == 3 then
				votos[voto - 1] += 1
				client.puts "ok"
			else
				client.puts "0"
			end
		elsif msg[0] == "resultado"
			if senha == msg[1]
				client.puts "resultado:#{candidatos[0]} #{votos[0]}##{candidatos[1]} #{votos[1]}##{candidatos[2]} #{votos[2]}"
			else
				client.puts "0"
			end
		else
			client.puts "0"
		end
	end
}
