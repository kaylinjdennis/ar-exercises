require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surry", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Wistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(["mens_apparel = :mens_apparel", {mens_apparel: true}])

@mens_stores.each do | store |
	puts "#{store.name}: #{store.annual_revenue}"
end

@womens_stores_below_1m = Store.where("annual_revenue < ? AND womens_apparel = ?", 1000000, true)
puts @womens_stores_below_1m
