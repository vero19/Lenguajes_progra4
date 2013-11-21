require 'open-uri'
require 'rubygems'
require './musica'

class Datos
	lista=[]
	def initialize
	end

	def definirURL(datoBusqueda)
		diseno(datoBusqueda)
		direccionURL = 'http://bandcamp.com/tag/'+datoBusqueda+'?sort_field=date'
		extraerDatos(direccionURL)
	end

	def extraerDatos(direccion)
		File.open('codigo.txt','w') do |f1|
			f1.puts open(direccion).read
		end
	
		File.open('codigo.txt','r') do |f2| 
			a = 0
			while(a!=364)
				linea = f2.gets
				a = a+1
				if(a==259 or a==358 or a==347 or a==336 or a==325 or a==314 or a==292 or a==303 or a==281 or a==270)
					datos = linea.split("=",2).drop(0)
					c = datos.last.split("=")
					url = c.shift.split(" ").shift
					alb = c.last
					album = alb.split(">").shift
					linea = f2.gets
					linea = f2.gets
					linea = f2.gets
					linea = f2.gets
					nombre = linea.split(">",2)
					nom = nombre.last.split("<").shift
					puts "el url es "+url
					puts "el album es "+album
					puts "el artista es "+nom
					if(a==259) 
						busqueda1 = Musica.new(album, nom, url)
					File.open('informacion.txt','w') do |f7|
						f7.puts album+' '+nom+' '+url
					end
					File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda1.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda1.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda1.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
					end
					 end
					if(a==270) 
						busqueda2 = Musica.new(album, nom, url) 
						File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
						File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda2.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda2.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda2.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
						end
					end
					if(a==281) 
					busqueda3 = Musica.new(album, nom, url) 
					File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
					File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda3.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda3.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda3.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
							end
					end
					if(a==292) 
						busqueda4 = Musica.new(album, nom, url) 
						File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
						File.open('/home/vero/progra4/views/form1','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda4.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda4.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda4.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
							end
					end
					if(a==303) 
						busqueda5 = Musica.new(album, nom, url) 
						File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
						File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda5.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda5.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda5.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
							end
					end
					if(a==314) 
						busqueda6 = Musica.new(album, nom, url) 
						File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
						File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda6.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda6.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda6.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
							end
					end
					if(a==325) 
						busqueda7 = Musica.new(album, nom, url) 
						File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
						File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda7.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda7.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda7.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
							end
					end
					if(a==336) 
						busqueda8 = Musica.new(album, nom, url) 
						File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
						File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda8.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda8.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda8.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
							end
					end
					if(a==347) 
						busqueda9 = Musica.new(album, nom, url) 
						File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
						File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda9.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda9.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda9.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
							end
					end
					if(a==358) 
						busqueda10 = Musica.new(album, nom, url) 
						File.open('informacion.txt','a') do |f7|
						f7.puts album+' '+nom+' '+url
					end
						File.open('/home/vero/progra4/views/form1.erb','a') do |f4|
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Grupo: '+busqueda10.get_artista+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF ><td ALIGN=rigth width="800" height="30">Album: '+busqueda10.get_album+'</td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Gratuito o pago </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="30">Url:'+busqueda10.get_url+' </td></tr>'
			f4.puts '<tr bgcolor=#FFFFFF><td ALIGN=rigth width="800" height="10"></td></tr>'
			f4.puts '<tr><td ALIGN=rigth width="800" height="20"></td></tr>'
							end
					end
					a = a +4
				end
			end	
		end
	end

	def diseno(datoBusqueda)
		File.open('views/form1.erb','w') do |f3|
			f3.puts '<html><head><title>Resultados</title>'
			dato = "'http://fonts.googleapis.com/css?family=Ribeye'"
			sty = "'stylesheet'"
			tex = "'text/css'"
			tipo = "'Piedar'"
			f3.puts '<link href='+dato+' rel='+sty+'type='+tex+'><style type="text/css">'
			f3.puts 'body{background-color:#C45008;font-family: '+tipo+', cursive;}'
			f3.puts '#borde{background-color:#C45008;height: 5px;}'
			f3.puts 'table{font-family: '+tipo+', cursive;padding: 10px;}</style></head><body>'
			f3.puts '<form action="/form1" method="post">'
			f3.puts '<div id="borde" ALIGN=rigth></div><table ALIGN=center>'
			f3.puts '<tr><td ALIGN=rigth><font color=#FDFFFF><h1>'+datoBusqueda+'</h1> <input type="submit" value="Twitter"></td><td></td></tr>'
		end
	end
end
