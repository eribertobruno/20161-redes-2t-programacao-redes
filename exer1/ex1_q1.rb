puts "digite uma frase"
frase = gets.chomp
puts "insira um caractere"
c = gets.chomp
x = frase.count(c)

puts "o caractere \'#{c}\' aparece #{x} vezes na frase"
