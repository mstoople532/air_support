# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flight.create(
  flight_name: "BA 5218",
  route_id: 1,
  departure: 1490808300,
  arrival: 1490813700,
  number_of_passengers: 200,
  aircraft_type: "Boeing 737-800"
  # arrived: Nil
  # stocked: Nil
  # cleaned: Nil
)

Route.create(
  id: 1,
  destination: DCA,
  origin: JFK,
)

Flight.create(
  flight_name: "AA 4438",
  route_id: 2,
  departure: 1490814720,
  arrival: 1490820060,
  number_of_passengers: 50,
  aircraft_type: "Embraer RJ145"
)

Route.create(
  id: 2,
  destination: JFK,
  origin: DCA
)

Flight.create(
  flight_name: "AS 6416",
  route_id: 3,
  departure: 1490809500,
  arrival: 1490820060,
  number_of_passengers: 200,
  aircraft_type: "Boeing 737-800"
)

Route.create(
  id: 3,
  destination: LAX,
  origin: DCA
)

Route.create(
  id: 4,
  destination: DCA,
  origin: LAX
)

Flight.create(
  flight_name: "KE 6082",
  route_id: 4,
  departure: 1490778300,
  arrival: 1490820060,
  number_of_passengers: 200,
  aircraft_type: "Boeing 737-800"
)
