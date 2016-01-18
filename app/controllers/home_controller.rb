class HomeController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@coordenadas = Coordenada.all
		@coordenada = Coordenada.new
    	@hash = Gmaps4rails.build_markers(@coordenadas) do |coordenadas, marker|
      		marker.lat coordenadas.lat
      		marker.lng coordenadas.lon
      		marker.infowindow "<b>#{coordenadas.ot} </b><br> lat: #{coordenadas.lat} , lng: #{coordenadas.lon}"
      	end
	end

	def newc
    puts " aqui"
    @coordenada = Coordenada.new(coordenada_params)

    respond_to do |format|
      if @coordenada.save
        format.html { redirect_to @coordenada, notice: 'Coordenada was successfully created.' }
        format.json { render :show, status: :created, location: @coordenada }
      else
        format.html { render :new }
        format.json { render json: @coordenada.errors, status: :unprocessable_entity }
      end
    end
  end
end