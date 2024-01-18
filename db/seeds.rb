# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  email: 'admin@example.com',
  password: 'admin123',
  password_confirmation: 'admin123',
  admin: true
)

Category.create(heading: 'Pizza', body: 'Savory, spicy, odorous', display: true)
Category.create(heading: 'Pasta', body: 'All varieties with cornucopia of herbs and spices', display: true)
Category.create(heading: 'Tacos', body: 'Spicy hot!', display: true)


Product.create(
  name: 'La Jardeniere',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 11.99,
  catering: true,
  category: Category.find(1)
).image.attach(io: File.open('app/assets/images/pizza.jpg'), filename: 'pizza.jpg')

Product.create(
  name: 'Porco Pizza',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 11.99,
  catering: true,
  featured: true,
  category: Category.find(1)
).image.attach(io: File.open('app/assets/images/pizza.jpg'), filename: 'pizza.jpg')

Product.create(
  name: 'De Galo',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 11.99,
  catering: true,
  category: Category.find(1)
).image.attach(io: File.open('app/assets/images/pizza.jpg'), filename: 'pizza.jpg')

Product.create(
  name: 'Gnocci',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 7.95,
  catering: true,
  featured: true,
  category: Category.find(2)
).image.attach(io: File.open('app/assets/images/pasta.jpg'), filename: 'pasta.jpg')

Product.create(
  name: 'Spaghetti',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 7.95,
  catering: true,
  category: Category.find(2)
).image.attach(io: File.open('app/assets/images/pasta.jpg'), filename: 'pasta.jpg')

Product.create(
  name: 'Vermicelli',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 7.95,
  catering: true,
  category: Category.find(2)
).image.attach(io: File.open('app/assets/images/pasta.jpg'), filename: 'pasta.jpg')

Product.create(
  name: 'De Carne Asada',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 5.80,
  catering: true,
  category: Category.find(3)
).image.attach(io: File.open('app/assets/images/tacos.jpg'), filename: 'tacos.jpg')

Product.create(
  name: 'De Cabeza',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 5.80,
  catering: true,
  category: Category.find(3)
).image.attach(io: File.open('app/assets/images/tacos.jpg'), filename: 'tacos.jpg')

Product.create(
  name: 'De Lengua',
  description: 'Non-processed mould on grass-fed cheese, with a crust of free_range raised dough',
  price: 5.80,
  catering: true,
  featured: true,
  category: Category.find(3)
).image.attach(io: File.open('app/assets/images/tacos.jpg'), filename: 'tacos.jpg')
