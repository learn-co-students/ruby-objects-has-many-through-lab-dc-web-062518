require 'pry'

class Artist
  # has many songs
  # has many genres through songs

  attr_accessor :songs
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    Artist.all << self
  end

  def new_song(name, genre)
    var = Song.new(name, self, genre)
  end

  def song_names
    songs.map { |song| song.name}
  end

  def genres
    self.songs.map {|song| song.genre}.uniq
  end

end
