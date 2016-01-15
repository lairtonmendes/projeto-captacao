class HomeController < ApplicationController
	def index
		@coordenadas = Coordenada.all
    	@hash = Gmaps4rails.build_markers(@coordenadas) do |coordenadas, marker|
      		marker.lat coordenadas.lat
      		marker.lng coordenadas.lon
      		marker.infowindow "<b>#{coordenadas.ot} </b><br> lat: #{coordenadas.lat} , lng: #{coordenadas.lon}"
      	end
	end
end