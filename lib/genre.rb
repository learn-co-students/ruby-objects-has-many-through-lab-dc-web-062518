class Genre

attr_reader :name

@all = []

  def initialize(name)
    @name = name
  end

  def artists
    self.songs.map {|song| song.artist}.uniq
  end

  def songs
    #single source of truth
    Song.all.select { |song| song.genre == self }
  end


end
