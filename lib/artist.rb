require 'pry'

class Artist

  attr_reader :name

  @@all = []

def initialize(name)
  @name = name
  @@all << self
  #@songs = []
end

def songs
  Song.all.find_all { |song| song.artist == self}
end

def self.all
  @@all
end

def new_song(name, genre)
  Song.new(name, self, genre)
end


def song_names(name, genre)
  songs.map {|song| song.name}
end

#artists has many genres throuigh songs
  def genres
    self.songs.map { |song| song.genre }.uniq
  end
# binding.pry

end
