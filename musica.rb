class Musica
	def initialize(album, artista, url)  
	    # atributos   
	    @album = album  
	    @artista = artista
	    @url = url 
  	end 

	def get_album
		@album
	end

	def get_artista
		@artista
	end

	def get_url
		@url
	end
end
