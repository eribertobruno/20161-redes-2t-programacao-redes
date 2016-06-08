puts "digite uma frase"
frase = gets.chomp.downcase
vogais = ['a','e','i','o','u']
n = 0
vogais.each{|v| n = n + frase.count(v) }

puts "A frase contem #{n} vogais"
