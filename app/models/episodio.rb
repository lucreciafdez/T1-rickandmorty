class Episodio < ApplicationRecord
  serialize :characters, Array

  def self.search(search)
# Title is for the above case, the OP incorrectly had 'name'
  where("name LIKE ?", "%#{search}%")
  end

  def self.consulta_uno(i)
    http = HTTP.get("https://integracion-rick-morty-api.herokuapp.com/api/episode/#{i}").body
    epi = JSON.parse(http)
    return epi
  end

  def self.consulta_pagina(i)
    http = HTTP.get("https://integracion-rick-morty-api.herokuapp.com/api/episode/?page=#{i}").body
    epi = JSON.parse(http)
    return epi["results"]
  end

  def self.consulta_obtener_char(i)
    http = HTTP.get("https://integracion-rick-morty-api.herokuapp.com/api/episode/#{i}").body
    epi = JSON.parse(http)
    character = epi["characters"]
    list = []
    character.each do |url|
      num = eval(url.split('/').last)
      list << num
    end
    char_url = "https://integracion-rick-morty-api.herokuapp.com/api/character/#{list}"
    return char_url
  end

  def self.consulta_varios(url)
    http = HTTP.get(url).body
    char = JSON.parse(http)
    return char
  end

  def self.consulta_todos
    i = 1
    list = []
    while i <= 31 do
      list << i
      i +=1
    end
    http = HTTP.get("https://integracion-rick-morty-api.herokuapp.com/api/episode/#{list}").body
    char = JSON.parse(http)
    return char
  end


end
