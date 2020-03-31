require 'http'

class CharacterController < ApplicationController
  def index
    if params[:search]
      @character = Character.search(params[:search])
    else
      @character = Character.all
    end
  end

end
