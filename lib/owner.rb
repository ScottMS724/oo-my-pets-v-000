class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species 
  
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
  
  def say_species
    "I am a #{@species}."
  end 
  
  def walk_dogs
    @pets.each do |species, pet|
      if pet
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