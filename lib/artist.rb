require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  @@songs = 0
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
    @songs << song 
    song.artist = self
    @@songs += 1
  end
  
  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    new_song.artist = self
    @@songs += 1
  end
  
  def self.song_count
    @@songs
  end
  
end