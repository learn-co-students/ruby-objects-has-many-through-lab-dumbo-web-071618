require 'pry'
class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
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
      song.artist == self
    end
  end

  def genres
    genre_array = []

    Song.all.each do |song|
      genre_array << song.genre
    end

    genre_array
  end

  # def genres
  #   genre_array = []
  #
  #   @songs.each do |song|
  #      genre_array << song.genre
  #   end
  #
  #   genre_array
  # end
end
# class Artist
#   attr_reader :name, :songs, :genres
#
#   @@all = []
#
#   def initialize(name)
#     @songs = []
#     @genres = []
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def new_song(name, genre)
#     @songs << Song.new(name, self, genre)
#     @songs.last
#   end
#
#   def genres
#     genre_array = []
#
#     @songs.each do |song|
#        genre_array << song.genre
#     end
#
#     genre_array
#   end
# end
