# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 1
while i <= 31 do
  http = HTTP.get("https://rickandmortyapi.com/api/episode/#{i}").body
  epi = JSON.parse(http)
  Episodio.create(id_epi: epi["id"], name: epi["name"], air_date: epi["air_date"],
                episode: epi["episode"], characters: epi["characters"], url: epi["url"],
                created: epi["created"] )
  i += 1
end

k = 1
while k <= 76 do
  http_loc = HTTP.get("https://rickandmortyapi.com/api/location/#{k}").body
  loc = JSON.parse(http_loc)
  Location.create(id_loc: loc["id"], name: loc["name"], type_loc: loc["type"],
      dimension: loc["dimension"], residents: loc["residents"], url: loc["url"],
      created: loc["created"])
  k += 1
end

j = 1
while j <= 493 do
  http_char = HTTP.get("https://rickandmortyapi.com/api/character/#{j}").body
  char = JSON.parse(http_char)
  Character.create(id_char: char["id"], name: char["name"], status: char["status"],
     species: char["species"], type_char: char["type"], gender: char["gender"],
     origin: char["origin"], location: char["location"], image: char["image"],
     episode: char["episode"], url: char["url"], created: char["created"])
  j += 1
end
