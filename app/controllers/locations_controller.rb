require 'http'

class LocationsController < ApplicationController
  def index
    if params[:search]
      @location = Location.search(params[:search])
    else
      @location = Location.all
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
   @location = Location.new(param[:location])
  end

  def new
    @location = Location.new
  end

  private
    	def episodio_params
      	params.require(:location).permit(:id_loc, :name, :type_loc, :dimension,
        :residents, :url, :created)
        #params.permit(:nombre, :correo, :direccion, :valoracion, :imagenes, :telefono)
      end

end
