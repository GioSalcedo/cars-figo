# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# llenar base de datos
# puts "Generando vehiculos"
10.times do
  Vehicle.create(
    model: Faker::Vehicle.make_and_model,
    brand: Faker::Vehicle.make,
    year: Faker::Vehicle.year,
    tpocar: Faker::Vehicle.car_type,
    passangers: (4..10).to_a.sample,
    price: (1000..5000).to_a.sample,
    suitcase_capacity: (2..4).to_a.sample,
    gearbox: Faker::Vehicle.transmission,
  )
end
