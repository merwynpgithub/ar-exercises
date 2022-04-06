require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

class StoreUpdate

  def initialize
    @store1 = Store.find_by(id: 1)
    @store2 = Store.find_by(id: 2)
  end

  def change_store1_info
    @store1.name = "Sudbury"
    @store1.save
  end

end

store_update = StoreUpdate.new
store_update.change_store1_info
