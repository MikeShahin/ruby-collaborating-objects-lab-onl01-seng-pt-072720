class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
    
  def save
    @@all << self
  end
end