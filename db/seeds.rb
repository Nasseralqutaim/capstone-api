


require "csv"
csv_text = File.read(Rails.root.join("db", "national-historic-landmarks-20220628.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

data = csv.map do |row|
  address = Address.find_or_create_by(city: row["City "], state: row["State"])
  artifact = Artifact.create(address_id: address.id, name: row["Property Name"],url: row["External Link"], street: row["Street & Number"])
end    





# 


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




HistoricalEvent.create(address_id:360, year:1871, description: "The Great Chicago Fire was a conflagration that burned in the American city of Chicago during October 8–10, 1871. The fire killed approximately 300 people, destroyed roughly 3.3 square miles of the city including over 17,000 structures, and left more than 100,000 residents homeless.")

HistoricalEvent.create(address_id:360, year:1877, description: "In late July of 1877, Chicagoans played their part in the first nationwide uprising of workers. On July 16, railroad workers in Martinsburg, West Virginia, walked off the job to protest a 10 percent wage cut leveled by their employer, the Baltimore & Ohio Railroad. Strikes to protest cutbacks in the midst of a period of nationwide economic depression soon spread westward across the country. News of attempts to control boisterous crowds fueled worker protest and sporadic violence.")

HistoricalEvent.create(address_id:360, year:1995, description: "On July 12, 1995, a dangerous hot-air mass settled over Chicago, producing three consecutive days of temperatures over 99 degrees Fahrenheit, heat indices (which measure the heat experienced by a typical person) around 120, high humidity, and little evening cooling. The heat wave was not the most extreme weather system in the city's history, but it proved to be Chicago's most deadly environmental event. During the week of the most severe weather, 485 city residents, many of whom were old, alone, and impoverished, died of causes that medical examiners attributed to the heat. Several hundred decedents were never autopsied, though, and after the event the Chicago Department of Public Health discovered that 739 Chicagoans in excess of the norm had perished while thousands more had been hospitalized for heat-related problems.")









