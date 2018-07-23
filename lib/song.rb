 class Song

attr_accessor :name, :artist, :genre
 @@all = []
def initialize(name,artist, genre)
   @name = name 
   @artist  = artist
   @@all << self 
   @genre = genre
   
 end


  def self.all
    @@all
  end 


end 



