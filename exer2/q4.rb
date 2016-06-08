require "time"
puts "escolha um numero equivalente a um dia da semana, ex: 1(dom), 2(seg).. 7(sab):"
diaSem = gets.to_i - 1
puts "escolha um ano inicial"
ano = gets.to_i
t = Time.new(ano)
t2 = Time.new(ano,12,31)
d = 3600*24
while t <= t2 do
	if diaSem == t.wday then puts t.strftime("%d/%m") end
	t += d
end

