class Meal
  attr_accessor :total, :waiter, :customer, :tip
  @@all = []
  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter 
    @customer = customer
    @total = total
    @tip = tip 
    @@all << self 
  end 
  
  def all 
    @@all 
  end 
  
end