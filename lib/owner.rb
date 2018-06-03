class Owner
  @@all = []
  attr_accessor :name, :pets, :species
  
  def initialize(name)
    @name = name 
    @@all << self 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat 
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog 
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish 
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