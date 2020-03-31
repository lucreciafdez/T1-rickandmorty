class SearchController < ApplicationController

  def index
      q = params[:search].downcase
      @result_episode = Episodio.where("lowe(name) LIKE ?", "%" + q + "%")
      @result_character = Character.where("lower(name) LIKE ?", "%" + q + "%")
      @result_location = Location.where("lower(name) LIKE ?", "%" + q + "%")
  end
end
