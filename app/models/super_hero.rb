class SuperHero
  attr_accessor :name, :power, :bio
  
  @@all = []
  
  def initialize(details)
    @name = name
    @power = power
    @bio = bio
    @@all << self
  end
  
  def self.all
    @@all
  end
end