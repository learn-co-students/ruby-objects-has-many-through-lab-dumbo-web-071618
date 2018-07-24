require_relative "song.rb"

class Artist

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @@all << self
    @name = name
  end

  def new_song(name, genre)
    self.new(name, genre)
  end

end
