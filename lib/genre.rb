class Genre
  # has many songs
  # has many artists through songs

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def artists
    self.songs.map {|song| song.artist}.uniq
  end

  def songs
    Song.all.find_all {|song| song.genre == self}
  end

end
