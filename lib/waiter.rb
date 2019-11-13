class Waiter
  attr_accessor :name, :yrs_experience
  @@all = []
  def initialize(name, experience)
    @name = name 
    @yrs_experience = experience 
    @@all << self 
  end 
  
  def all 
    @@all 
  end 
end