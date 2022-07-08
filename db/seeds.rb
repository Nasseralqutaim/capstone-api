# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)


require "csv"
csv_text = File.read(Rails.root.join("db", "national-historic-landmarks-20220628.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

data = csv.map do |row|
  address = Address.find_or_create_by(city: row["City "], state: row["State"])
  artifact = Artifact.create(address_id: address.id, url: row["External Link"], street: row["Street & Number"])
end








User.create!(name: "Nasser", email: "nasser@test.com", password: "password")
User.create!(name: "Peter", email: "peter@test.com", password: "qwerty")
User.create!(name: "Lisa", email: "Lisa@test.com", password: "ytrewq")


Address.create!(city: "Chicago", state: "IL")
Address.create!(city: "Long Beach", state: "CA")
Address.create!(city: "Washington, D.C.", state: "Washington, D.C.")


Artifact.create!(url:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Farnsworth_House_by_Mies_Van_Der_Rohe_-_exterior-8.jpg/250px-Farnsworth_House_by_Mies_Van_Der_Rohe_-_exterior-8.jpg", address_id:1)
Artifact.create!(url:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/FarnsworthHouse-Mies-2.jpg/220px-FarnsworthHouse-Mies-2.jpg", address_id:1)



Artifact.create!(url:"https://upload.wikimedia.org/wikipedia/commons/d/d8/Casa_de_los_Cerritos%2C_4600_American_Avenue%2C_Long_Beach_%28Los_Angeles_County%2C_California%29.jpg", address_id:2)
Artifact.create!(url:"https://di-uploads-pod18.dealerinspire.com/normreeveshondacerritos/uploads/2019/08/los-rancho-cerritos-2.jpg", address_id:2, street: "312 west Eddie st ")




Artifact.create!(url:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/DAR_Constitution_Hall.JPG/250px-DAR_Constitution_Hall.JPG", address_id:3)
Artifact.create!(url:"https://i.ytimg.com/vi/tsiUG4iiQ7Q/maxresdefault.jpg", address_id:3)



AddressUser.create!(address_id:1, user_id:1)
AddressUser.create!(address_id:2, user_id:1)
AddressUser.create!(address_id:2, user_id:2)
AddressUser.create!(address_id:3, user_id:2)
AddressUser.create!(address_id:3, user_id:3)
AddressUser.create!(address_id:1, user_id:3)








