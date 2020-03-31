require 'http'

class LocationsController < ApplicationController
  def index
    if params[:search]
      @location = Location.search(params[:search])
    else
      @location = Location.all
    end
  end

end
