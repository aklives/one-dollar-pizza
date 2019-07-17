
Pizzaplace.create(name: "Dumbo Pizza", address: "81 Prospect Place, Brooklyn, NY", long: -73.987448000, lat: 40.700885000, average_rating: 4, zipcode: 10009)
Pizzaplace.create(name: "Champion Pizza", address: "2 W 14th NY, NY", long: -73.994040000, lat: 40.736020000, average_rating: 3, zipcode: 10011)
Pizzaplace.create(name: "99 Cent Best & Fresh Pizza", address: "2 E 24, NY, NY", long: -73.993492000, lat: 40.746324000, average_rating: 4, zipcode: 10001)
Pizzaplace.create(name: "2 Bros. Pizza", address: "21 W 24th, NY, NY", long: -73.995462170, lat: 40.739634000, average_rating: 3, zipcode: 10011)
Pizzaplace.create(name: "Percy's Pizza", address: "190 Bleeker, NY, NY", long: -74.001499000, lat: 40.729097000, average_rating: 4, zipcode: 10012)
Pizzaplace.create(name: "Slice & Co Pizza", address: "95 Macdougal St", long: -74.001123000, lat:40.729523000, average_rating: 5, zipcode: 100012)
Pizzaplace.create(name: "99 Cents Village", address: "333B 6th Ave", long: -74.001300000, lat: 40.731550000, average_rating: 5, zipcode: 10014 )
Pizzaplace.create(name: "Vinny Vincez Pizza", address: "231 1st Avenue", long: -73.982960000, lat: 40.731130000, average_rating: 4, zipcode: 10003 )
Pizzaplace.create(name: "FDR 99¢ Slice Pizza", address: "150 E 2nd St, NY, NY", long: -73.985490000, lat: 40.722990000, average_rating: 4, zipcode: 10009 )
Pizzaplace.create(name: "$1 Pizza", address: "832 6Th Ave, NY, NY", long: -73.989850000, lat: 40.746430000, average_rating: 4, zipcode:10001 )
Pizzaplace.create(name: "One Dollar Pizza", address: "578 9th Ave, New York, NY", long: -73.992470000, lat: 40.758110000, average_rating: 4, zipcode: 10036)
Pizzaplace.create(name: "99 Cent Express Pizza", address: "301 W 43rd St, New York, NY 10036", long: -73.989624000 , lat: 40.758158000, average_rating: 4, zipcode: 10036)
Pizzaplace.create(name: "The Best Pizza", address: "748 9th Ave, New York, NY", long: -73.988570000, lat: 40.763700000, average_rating: 4, zipcode: 10019)
Pizzaplace.create(name: "99 Cents Fresh Pizza", address: "73 Lexington Ave, New York, NY", long: -73.974133000, lat: 40.753792000, average_rating: 5, zipcode: 10017)
Pizzaplace.create(name: "99 Cents Pizza", address: "1723 Broadway, New York, NY", long: -73.982550000, lat: 40.764622000, average_rating: 5, zipcode: 10019)
# Pizzaplace.ceeate(name: "", address: "", long: , lat: , average_rating: , zipcode: )




User.create(username: "John Pie")
User.create(username: "Johanna Pie")
User.create(username: "Rabbit Pie")
User.create(username: "Wendall Pie")



Review.create(rating: 4, content: "Cheap and easy just how I like it ;)", user_id: 2, pizzaplace_id: 1)
Review.create(rating: 5, content: "Nice place and also $2 beers!", user_id: 2, pizzaplace_id: 2)
Review.create(rating: 3, content: "I love it, best dollar pizza out there!", user_id: 1, pizzaplace_id: 2)
