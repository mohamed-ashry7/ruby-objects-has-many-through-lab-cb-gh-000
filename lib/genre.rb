class Genre

  attr_accessor :genre

  @@all = []
  def initialize(genre)
    @genre = genre
  end

  def self.all
    @@all
  end
  def songs
    Song.all.select {|s| s.genre == self }
  end
  def 
end
