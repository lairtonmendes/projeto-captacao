class CoordenadasController < ApplicationController
  before_action :set_coordenada, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /coordenadas
  # GET /coordenadas.json
  def index
    @coordenadas = Coordenada.all
  end

  # GET /coordenadas/1
  # GET /coordenadas/1.json
  def show
  end

  # GET /coordenadas/new
  def new
    @coordenada = Coordenada.new
  end

  # GET /coordenadas/1/edit
  def edit
  end

  # POST /coordenadas
  # POST /coordenadas.json
  def create
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

  # PATCH/PUT /coordenadas/1
  # PATCH/PUT /coordenadas/1.json
  def update
    respond_to do |format|
      if @coordenada.update(coordenada_params)
        format.html { redirect_to @coordenada, notice: 'Coordenada was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordenada }
      else
        format.html { render :edit }
        format.json { render json: @coordenada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordenadas/1
  # DELETE /coordenadas/1.json
  def destroy
    @coordenada.destroy
    respond_to do |format|
      format.html { redirect_to coordenadas_url, notice: 'Coordenada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordenada
      @coordenada = Coordenada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coordenada_params
      params.require(:coordenada).permit(:ot, :lat, :lon)
    end
end
