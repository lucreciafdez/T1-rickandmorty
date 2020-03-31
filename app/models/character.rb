class Character < ApplicationRecord
  serialize :episode, Array

  def self.search(search)
# Title is for the above case, the OP incorrectly had 'name'
  where("name LIKE ?", "%#{search}%")
  end

  def self.consulta_uno(i)
    http = HTTP.get("https://rickandmortyapi.com/api/character/#{i}").body
    char = JSON.parse(http)
    return char
  end

  def self.consulta_todos
    i = 1
    list = []
    while i <= 493 do
      list << i
      i +=1
    end
    http = HTTP.get("https://rickandmortyapi.com/api/character/#{list}").body
    char = JSON.parse(http)
    return char
  end

  def self.consulta_pagina(i)
    http = HTTP.get("https://rickandmortyapi.com/api/character/?page=#{i}").body
    char = JSON.parse(http)
    return char["results"]
  end

  def self.consulta_varios(url)
    http = HTTP.get(url).body
    char = JSON.parse(http)
    return char
  end

  def self.consulta_obtener_epi(i)
    http = HTTP.get("https://rickandmortyapi.com/api/character/#{i}").body
    char = JSON.parse(http)
    episode = char["episode"]
    list = []
    episode.each do |url|
      num = eval(url.split('/').last)
      list << num
    end
    epi_url = "https://rickandmortyapi.com/api/episode/#{list}"
    return epi_url
  end

end
