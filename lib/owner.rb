class Owner
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.reset_all 
    self.all.clear 
  end 
  
  def self.count
    self.all.count 
  end 
  
end