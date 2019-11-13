class Customer
  attr_accessor :name, :age, :meals 
  @@all = []
  
  def initialize(name, age)
    @name = name 
    @age = age 
    @meals = []
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
end