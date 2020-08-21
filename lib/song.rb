class Song
  attr_accessor :artist, :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
    
  def save  
    @@all << self
  end
  
  def artist_name = (name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def new_by_filename(name)
    artist, song = name.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
  
end