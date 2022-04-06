require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, { presence: true }
  validates :last_name, { presence: true }
  validates :hourly_rate, numericality: { greater_than: 40 }
  validates :hourly_rate, numericality: { less_than: 200 }
end

employee3 = Employee.create(store_id: 2, last_name: "Chang", hourly_rate: 50)
employee4 = Employee.create(store_id: 3, first_name: "Jimmy", hourly_rate: 48)
employee5 = Employee.create(store_id: 3, first_name: "Jimmy", last_name: "Chang", hourly_rate: 38)
employee6 = Employee.create(store_id: 3, first_name: "Jimmy", last_name: "Chang", hourly_rate: 220)

puts "Checking valid employee insertions?"
puts employee3.valid?
puts employee4.valid?
puts employee5.valid?
puts employee6.valid?

puts "---------"

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: { greater_than: 0 }

  validate :mens_apparel_womens_apparel_cannot_both_be_false

  def mens_apparel_womens_apparel_cannot_both_be_false
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "can't be false if womens apparel is false")
    end
  end
end

store7 = Store.create(name: "AB", annual_revenue: 250000, mens_apparel: false, womens_apparel: true)
store8 = Store.create(name: "Waterloo", annual_revenue: '250000', mens_apparel: false, womens_apparel: true)
store9 = Store.create(name: "Calgary", annual_revenue: '-', mens_apparel: false, womens_apparel: true)
store10 = Store.create(name: "London", annual_revenue: 30000, mens_apparel: false, womens_apparel: false)

puts "Checking valid store insertions?"
puts store7.valid?
puts store8.valid? #true because string converted to number
puts store9.valid?
puts store10.valid?