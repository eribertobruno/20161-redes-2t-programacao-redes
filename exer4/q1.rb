begin
	puts "digite o nome de um arquivo de texto:"
	nome_arquivo = gets.chomp
	a = IO.readlines(nome_arquivo)
	n = 0
	palavras = a.each{|linha| n += linha.split().size}
	puts n
rescue Exception => ex
	puts ex
end
