require "time"
datas = []
3.times{puts "digite uma data"; datas << Time.parse(gets.chomp)}
puts (datas[2] == datas.sort[1])? "pertence ao periodo": "nao pertence"
