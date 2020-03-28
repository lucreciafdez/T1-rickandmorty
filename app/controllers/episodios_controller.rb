require "http"

class EpisodiosController < ApplicationController
  def index
    if params[:search]
      @episodio = Episodio.search(params[:search])
    else
      @episodio = Episodio.all
    end
  end

  def show
    @episodio = Episodio.find(params[:id])
  end

  def create
   @episodio = Episodio.new(param[:episodio])
  end

  def new
    @episodio = Episodio.new
  end

  private
    	def episodio_params
      	params.require(:episodio).permit(:id_epi, :name, :air_date, :episode, :characters, :url, :created)
        #params.permit(:nombre, :correo, :direccion, :valoracion, :imagenes, :telefono)
      end

end
