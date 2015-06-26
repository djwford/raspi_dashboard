# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.

UtilityBill.create(
  total_used: 1.5,
  month: 6,
  unit_price: 11.14,
  days_in_cycle: 27,
  daily_price: 0.73,
  category: "gas")

UtilityBill.create(
  total_used: 175,
  month: 6,
  unit_price: 0.0888,
  days_in_cycle: 35,
  daily_price: 0.75,
  category: "electric")

