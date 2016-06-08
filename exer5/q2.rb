filename = "ifrn.bmp"
data = []
file = File.open(filename, "r")
begin
	header = "42 4d ba e6 13 00 00 00".split()
	ok = true
	for i in 0..7 do
		byte = file.read(1).unpack('C')[0]
		if header[i].to_i(16) != byte
			ok = false
			break
		end
	end	
ensure
		file.close
end
if ok
	puts "#{filename} eh um arquivo BMP."
elsif
	puts "#{filename} nao eh um arquivo BMP."
end
