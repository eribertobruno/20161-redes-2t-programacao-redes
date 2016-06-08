require 'time'
a = 1800
b = 3000
p = 3600*24*365.25*75.3
t = Time.new(1985,03)

t1 = (t-p*((t.year-a)/p.to_i))

while t1.year < b do
	puts t1.strftime('%m/%Y')
	t1 += p
end
