class Location < ApplicationRecord
  serialize :residents, Array

  def self.search(search)
# Title is for the above case, the OP incorrectly had 'name'
  where("name LIKE ?", "%#{search}%")
  end

  def self.consulta_pagina(i)
    http = HTTP.get("https://integracion-rick-morty-api.herokuapp.com/api/location/?page=#{i}").body
    loc = JSON.parse(http)
    return loc["results"]
  end

  def self.consulta_uno(i)
    http = HTTP.get("https://integracion-rick-morty-api.herokuapp.com/api/location/#{i}").body
    loc = JSON.parse(http)
    return loc
  end

  def self.consulta_obtener_char(i)
    http = HTTP.get("https://integracion-rick-morty-api.herokuapp.com/api/location/#{i}").body
    loc = JSON.parse(http)
    character = loc["residents"]
    list = []
    character.each do |url|
      num = eval(url.split('/').last)
      list << num
    end
    char_url = "https://integracion-rick-morty-api.herokuapp.com/api/character/#{list}"
    return char_url
  end

  def self.consulta_todos
    i = 1
    list = []
    while i <= 76 do
      list << i
      i +=1
    end
    http = HTTP.get("https://integracion-rick-morty-api.herokuapp.com/api/location/#{list}").body
    char = JSON.parse(http)
    return char
  end

end
