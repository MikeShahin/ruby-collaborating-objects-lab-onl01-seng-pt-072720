class Artist
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@al << self
  end
  
  def self.all
    @@all
  end
end