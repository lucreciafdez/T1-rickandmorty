require "http"

class EpisodiosController < ApplicationController
  def index
    if params[:search]
      @episodio = Episodio.search(params[:search]).order("created_at DESC")
    else
      @episodio = Episodio.all
    end
  end

end
