require "time"
puts "digite a data de fabricacao:"
fab = Time.parse(gets.chomp) 
puts "digite quantos dias de validade:"
vald = gets.to_i
val = fab + vald*60*60*24
puts "o prduto vence em " +val.strftime('%d/%m/%Y')
