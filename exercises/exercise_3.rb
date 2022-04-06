require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...


puts "Initial count before change"
puts Store.all.count

class StoreUpdate2

  def initialize
    @store3 = Store.find_by(id: 3)
  end

  def erase_store3
    @store3.destroy
  end

end

store_update2 = StoreUpdate2.new
store_update2.erase_store3

puts "Current count after change"
puts Store.all.count
