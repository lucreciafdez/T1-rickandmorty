require 'http'

class CharacterController < ApplicationController
  def index
    if params[:search]
      @character = Character.search(params[:search])
    else
      @character = Character.all
    end
  end

  def show
    @character = Character.find(params[:id_char])
  end

  def create
   @character = Character.new(param[:character])
  end

  def new
    @character = Character.new
  end

  private
    	def episodio_params
      	params.require(:character).permit(:id_char, :name, :status, :species,
           :type, :gender, :origin, :location, :image, :episode, :url, :created)
        #params.permit(:nombre, :correo, :direccion, :valoracion, :imagenes, :telefono)
      end

end
