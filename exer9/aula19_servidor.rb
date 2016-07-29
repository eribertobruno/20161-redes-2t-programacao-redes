#implementação do serviço REST.
#Utiliza a biblioteca Sinatra, a qual deve ser instalada
#gem install sinatra
require "sinatra"
require "rexml/document"
include REXML

set :port, 2000

class Usuario
	attr_accessor :nome, :links

	def initialize(nome)
		@nome = nome
		@links = Hash.new
		@contador = 1
	end

end
#inicializar variaveis globais
$contador = 1
$usuarios = Hash.new


get '/' do
	'Seja bem-vindo ao sistema de bookmark de REDES-2N'
end

get '/usuario/:id' do 
	id_usuario = params[:id]
	usuario = $usuarios[id_usuario.to_i]
	if usuario.nil?
		status 404
	else
		status 200
		content_type 'text/xml'
		"<?xml version='1.0' ?><usuario nome='#{usuario.nome}'/>"
	end
end

put '/usuario' do
	#construindo a requisicao de cadastro de usuario
	doc = Document.new(request.body.string)
	nome = doc.elements[1].attributes["nome"]
	if nome.nil?
		status 404
	else
		usuario = Usuario.new(nome)
		$usuarios[$contador] = usuario
		puts ">>>> Usuario criado com o ID: #{$contador}"
		$contador += 1
		status 200
	end
end

post '/usuario/:id' do
	doc = Document.new(request.body.string)
	nome = doc.elements[1].attributes["nome"]
	id_usuario = params[:id]
	usuario = $usuarios[id_usuario.to_i]
	if usuario.nil?
		status 404
	else
		$usuarios[id_usuario.to_i].nome = nome
		puts ">>>> Usuario com ID: #{id_usuario}  auterado para: #{nome}"
		status 200
	end
end

get '/usuario/:id/:bookmark' do 
	id_usuario = params[:id]
	bookmark = params[:bookmark]
	usuario = $usuarios[id_usuario.to_i]
	link = 
	if usuario.nil?
		status 404
	else
		status 200
		content_type 'text/xml'
		"<?xml version='1.0' ?><usuario nome='#{usuario.nome}'/>"
	end
end
		
