require "pry"
require_relative "song.rb"

class Artist

  attr_accessor :name, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @@all << self
    @name = name

  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    # binding.pry
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map {|song| song.genre}
  end
end
