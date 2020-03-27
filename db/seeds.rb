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
