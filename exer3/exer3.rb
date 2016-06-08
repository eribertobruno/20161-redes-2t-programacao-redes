# encoding: UTF-8
class Fracao
  attr_accessor :numerador
  attr_reader :denominador

def initialize(num,den)
	@numerador=num
	self.denominador=den
end

  def denominador=(den)
    if den.to_i != 0
      @denominador = den
    end
  end

  def somar(f)
  	n = @numerador*f.denominador+f.numerador*@denominador
  	d = @denominador*f.denominador
  	return (simplificar(n,d))
  end

  def subtrair(f)
  	n = @numerador*f.denominador-f.numerador*@denominador
  	d = @denominador*f.denominador
  	return (simplificar(n,d))
  end
  
  def multiplicar(f)
  	n = @numerador*f.numerador
  	d = @denominador*f.denominador
  	return (simplificar(n,d))
  end
  
  def dividir(f)
  	n = @numerador*f.denominador
  	d = @denominador*f.numerador
  	return (simplificar(n,d))
  end
  
  def simplificar(n,d)
	i = 2
	while i <= d
	   if n % i == 0 && d % i == 0
		 n = n/i
		 d = d/i
		 i -= 1
	   end
	   i += 1
	end
	return Fracao.new(n,d)
  end

  def to_s
	puts @numerador.to_s + '/' + @denominador.to_s
  end
  
  def to_f
	puts @numerador.to_f / @denominador
  end

end

#codigo de teste
puts "Alterando os valor da fração para 3/5"
f = Fracao.new(3,5)
puts f.to_s

puts "Alterando os valor da fração para 8/6"
f1 = Fracao.new(8,6)
puts f1.to_s

puts "Alterando os valor da fração para 8/0"
f2 = Fracao.new(8,0)
puts f2.to_s

#somando duas fracoes e retornando o resultado em um novo objeto
f3=f.somar(f1)
puts f3.to_s

#imprimir em número real
puts f3.to_f

#subtraindo duas fracoes e retornando o resultado em um novo objeto
f4=f.subtrair(f1)
puts f4.to_s

#multiplicando duas fracoes e retornando o resultado em um novo objeto
f5=f.multiplicar(f1)
puts f5.to_s

#dividindo duas fracoes e retornando o resultado em um novo objeto
f6=f.dividir(f1)
puts f6.to_s
