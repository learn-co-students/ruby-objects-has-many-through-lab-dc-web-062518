require 'pry'
class Artist
  @@all = []
  attr_accessor :name, :genre, :song

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    self.song =Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist.name == @name
    end
  end

  def genres
    self.songs.map do |song|
      #binding.pry
      song.genre
    end
  end
end
#binding.pry

#wisin = Artist.new('Wisin')
#yandel = Artist.new('Yandel')
#marck = Artist.new('Marck')
#yandel.new_song('caliente','reggaeton')
#yandel.new_song('duro','reggaeton')
#marck.new_song('Tu amor','Salsa')
#wisin.new_song('pegao','reggaeton')
