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
    Meal.all.select.each{|meal| meal.waiter == self}
  end
  
  def best_tipper
    best_tipped_meal = meals.max do |meal_a, meal_b| 
      ((meal_a.tip)/(meal_a.total)) <=> ((meal_b.tip)/(meal_b.total)) 
    end
    best_tipped_meal.customer
  end
  
  def self.all 
    @@all 
  end 
end