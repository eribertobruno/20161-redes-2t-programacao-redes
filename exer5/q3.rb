#messagem teste
dados="msg teste"
#decodificacao em binario
bdados="msg teste".unpack('b*')

sport= 5048
dport= 1234
length=8*8 + bdados[0].size
checksum= 0


bsport="%016b" % sport
bdport="%016b" % dport
blength="%016b" % length
bchecksum="%016b" % checksum

datagrama = bsport + bdport + blength + bchecksum + bdados[0]

i = 0


while i < length do
	puts datagrama[i..(i+31)]
	i += 32
end

