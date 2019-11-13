class Waiter
  attr_accessor :name, :yrs_experience
  @@all = []
  def initialize(name, experience)
    @name = name 
    @yrs_experience = experience 
    @@all << self 
  end 
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
  
  def meals 
    Meal.select.each{|meal| meal.waitress == self}
  end
  
  def all 
    @@all 
  end 
end