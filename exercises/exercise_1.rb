require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

store1 = Store.new
store1.name = "Burnaby"
store1.annual_revenue = 300000
store1.mens_apparel = true
store1.womens_apparel = true

store1.save

store2 = Store.new
store2.name = "Richmond"
store2.annual_revenue = 1260000
store2.mens_apparel = false
store2.womens_apparel = true

store2.save

store3 = Store.new
store3.name = "Gastown"
store3.annual_revenue = 190000
store3.mens_apparel = true
store3.womens_apparel = false

store3.save