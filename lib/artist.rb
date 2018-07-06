require 'pry'

class Artist

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    # @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.find_all do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.map { |song| song.genre }.uniq
  end
end

jz = Artist.new("Jay-Z")



#
# def song_names(name, genre)
#   songs.map {|song| song.name}
# end
#
