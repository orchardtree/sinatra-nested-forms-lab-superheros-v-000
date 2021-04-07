class SuperHero
  attr_accessor :name, :power, :biography
  
  @@all = []
  
  def initialize(details)
    @name = name
    @power = power
    @biography = biography
    @@all << self
  end
  
  def self.all
    @@all
  end
end