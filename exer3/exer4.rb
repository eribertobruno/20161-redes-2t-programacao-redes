# encoding: UTF-8
class Lampada
	attr_reader :maxlig
   def initialize(maxlig)
      @ligada = false
	  @queimada = false
	  @qlig = 0
	  @maxlig = maxlig + rand(7)
   end
   
   def ligar
      @ligada = true
      @qlig += 1
   end
   
   def desligar
      @ligada = false
   end
   
   def ligada?
      @ligada
   end
   
   def queimada?
      @queimada
   end
   
   
      
   
end

	lampadas = []
	x = 0
	for i in 1..20 do
		lampadas << Lampada.new(8)
		x += lampadas[i-1].maxlig
	end
	
	puts "a média de duração das lampadas é de #{x.to_f/lampadas.size} vezes que podem ser ligadas antes de queimar"
