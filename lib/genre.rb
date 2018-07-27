class Genre
attr_accessor :name
@@all = [] #this represents all genres

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |music|
      music.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end
end
