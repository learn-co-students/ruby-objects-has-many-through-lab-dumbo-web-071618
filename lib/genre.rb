class Genre

  attr_accessor :name


  def initialize(name)
    @name = name
  end

  # getter
  def songs
    Song.all.select{ |song| song.genre == self}
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
