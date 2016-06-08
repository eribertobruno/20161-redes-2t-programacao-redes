puts "digite um nome competo"
palavra = gets.chomp

array = palavra.split()
puts "#{array[array.size() -1]}, #{array[0]}"
