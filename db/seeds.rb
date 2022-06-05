# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Admin.create([
  {email: "client@client", password: '123456'},
  {email: "client2@client2", password: '123456'}
])

Client.create([
  {email: "client@client", password: '123456'},
  {email: "client2@client2", password: '123456'}
])

Store.create([
  {name: 'store 1', priority: '1', repair_products: "Laptop, Television, Smartphone, Consola"},
  {name: 'store 2', priority: '1', repair_products: "Laptop, Television"},
  {name: 'store 3', priority: '2', repair_products: "Smartphone, Consola"},
  {name: 'store 4', priority: '2', repair_products: "Television, Smartphone, Consola"},
  {name: 'store 5', priority: '1', repair_products: "Laptop, Television, Consola"},
  {name: 'store 6', priority: '3', repair_products: "Laptop, Smartphone, Consola"},
  {name: 'store 7', priority: '3', repair_products: "Laptop, Television"},
  {name: 'store 8', priority: '2', repair_products: "Laptop"},
])
