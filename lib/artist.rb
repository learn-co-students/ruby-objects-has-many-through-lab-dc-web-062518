require 'pry'

class Artist

attr_accessor :song, :name, :genre
attr_reader


@@all = []

  def initialize(name)
    @name = name
    @genres = []
    @@all << self

  end


  def self.all
    @@all
  end


def new_song(name, genre)
  Song.new(name, self, genre)
end


def songs
  Song.all.select do |song|
    if self == song.artist
      song
    end
  end
end


def genres
  Song.all.select do |x|
    @genres<< x.genre
  end
  @genres
end










end
