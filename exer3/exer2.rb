
class Retangulo
	attr_accessor :largura
	attr_accessor :altura
	
	def initialize(lar,alt)
		@largura = lar if lar > 0
		@altura = alt if alt > 0
	end
	
	def largura=(lar)
		@largura = lar if lar > 0
	end
	
	def altura=(alt)
		@altura = alt if alt > 0
	end
	
	def area
		@largura*@altura
	end
	
	def perimetro
		2*(@largura+@altura)
	end
	
	def set_dimensoes (lar,alt)
		@largura = lar if lar > 0
		@altura = alt if alt > 0
	end
	
	def quadrado?
		@largura==@altura
	end
end

ret = Retangulo.new(4,6)

puts ret.area

puts ret.perimetro

puts ret.quadrado?

ret.set_dimensoes(8,8)

puts ret.area

puts ret.perimetro

puts ret.quadrado?
