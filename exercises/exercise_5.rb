require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Calculating total revenue for all stores"
puts Store.sum(:annual_revenue)

puts "Calculating average revenue"
puts Store.sum(:annual_revenue)/Store.all.count

puts "Calculating number of stores that are generating $1M or more"
puts Store.where("annual_revenue > ?", 1000000).all.count