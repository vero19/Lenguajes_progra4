require 'rubygems'
require 'twitter'
require 'faraday'
require 'twitter_oauth'
require 'faraday/request/multipart'
require ('oauth')
require ('launchy')

class Tweets
	def initialize
	end

	def tweet(twet,client,tam) #Funcion que se encarga de realizar los tweet's
		puts("Por favor espere mientras realizamos los tweet's...")
		dato = (twet)
		largo = dato.length().to_i
		client.update(dato[0,139]) #Linea que se encarga de realizar el tweet
	end

def login(info,tam) #Metodo que se encarga de loguear al usuario en la cuenta, con ayuda de la libreria oauth
	cliente = TwitterOAuth::Client.new(:consumer_key => 'icdM2B1cY4tTZ9WnrT4XYQ',
	:consumer_secret => 'naPNlZfAsUg1upqFo6umwaJr7NSk3gbHNilVwDsA',:site=>"http://twitter.com",
                                                    :request_token_url => "https://api.twitter.com/oauth/request_token",
                                                    :access_token_url => "https://api.twitter.com/oauth/access_token",
                                                    :authorize_url => "https://api.twitter.com/oauth/authorize")

	request_token = cliente.request_token
	r_token = request_token.token
    	r_secret = request_token.secret
	puts "aqui esta"
	Launchy.open("https://api.twitter.com/oauth/authorize?oauth_token=" + r_token)
	puts "-----------------"+r_token
	puts "Digite el codigo:"
    pin = gets.chomp
	
		OAuth::RequestToken.new(cliente, r_token, r_secret)
		access_token = request_token.get_access_token(:oauth_verifier => pin)
		
		Twitter.configure do |config|
                        
		      config.consumer_key = 'icdM2B1cY4tTZ9WnrT4XYQ'
		      config.consumer_secret = 'naPNlZfAsUg1upqFo6umwaJr7NSk3gbHNilVwDsA'
		      config.oauth_token = access_token.token
		      config.oauth_token_secret = access_token.secret
		     end

    client = Twitter::Client.new
    client.verify_credentials
	tweet(info,client,tam)
end 

end

