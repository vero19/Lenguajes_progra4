require 'rubygems'
require 'sinatra'
require 'yaml'
require './datos'
require './twitter'

get '/' do
	erb :form
end

post '/form' do 
   nuevo 
end

post '/form1' do 
   hacerTweet
   
end

def hacerTweet
	File.open('informacion.txt','r') do |f2| 
			a = f2.gets
			datos = (a)
			tweets = Tweets.new()
			tweets.login(a,datos.length)
		
	end
	erb :form
end

def nuevo
  nombre = params[:message]
  puts nombre
  a(nombre)
	
end

def a(nombre)
   puts "esto es una prueba importante "+nombre
   d = Datos.new()
   d.definirURL(nombre)
	erb :form1
end
