require "time"
datas = []
3.times{puts "digite uma data"; datas << Time.parse(gets.chomp)}
puts datas.sort
