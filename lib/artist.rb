require 'pry'

class Artist
attr_accessor :name, :songs, :count
 
 @@all = []
 

  def initialize(name)
  @name = name
  @@all <<self
 
  end

  def songs 
  Song.all.select {|song| song.artist == self }
  end

  def add_song(song)
    song.artist = self 
    Song.all << song
  end


  def add_song_by_name(song)
   song = Song.new(song) 
   song.artist = self
   Song.all << song
 
  end

  def self.song_count
      Song.all.length - 2
  end
end