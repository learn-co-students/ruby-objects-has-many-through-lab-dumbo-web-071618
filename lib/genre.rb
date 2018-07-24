require_relative "song.rb"

class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

end
