class SearchController < ApplicationController

  def index
      @input = params[:search].downcase
      #@result_episode = Episodio.where("name LIKE ?", "%" + q + "%")
      #@result_character = Character.where("name LIKE ?", "%" + q + "%")
      #@result_location = Location.where("name LIKE ?", "%" + q + "%")
  end
end
