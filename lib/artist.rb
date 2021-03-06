require "pry"

class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    @songs << new_song
    #binding.pry
    new_song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
