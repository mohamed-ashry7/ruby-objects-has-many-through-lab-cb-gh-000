

def Song

  attr_accessor :artist , :genre , :name

  def initialize(name , artist , genre )
    @artist = artist
    @name = name
    @genre = genre
    @@all << self 
