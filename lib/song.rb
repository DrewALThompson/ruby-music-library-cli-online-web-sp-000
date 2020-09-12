 class Song < Base
  attr_accessor :name, :artist, :genre
  extend Concerns::Findable
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist=(artist) if artist != nil
    self.genre=(genre) if genre != nil
  end 
  
  def self.create(song)
    new_song = self.new(song)
    new_song.save
    new_song
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs.include?(self) ? nil : genre.songs << self
  end
  
  def self.new_from_filename(filename)
    song.name = filename.split(" - ")[1].split(".mp3")[0]
    artist.name = filename.split(" - ")[0]
    genre
  end
end 