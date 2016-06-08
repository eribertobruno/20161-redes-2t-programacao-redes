puts "digite uma palavra"
palavra = gets.chomp.downcase

if palavra == palavra.reverse
	puts "Eh palindromo"
else
	puts "Nao eh palindromo"
end
