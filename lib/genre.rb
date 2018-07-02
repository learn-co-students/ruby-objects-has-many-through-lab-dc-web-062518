class Genre
  @@all = []
  attr_accessor :song, :artist, :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    self.song = Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end
