require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

employee1 = Employee.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
employee2 = Employee.create(first_name: "John", last_name: "Samuel", hourly_rate: 45)

employee1.update(store_id: 4, first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
employee2.update(store_id: 6, first_name: "John", last_name: "Samuel", hourly_rate: 45)