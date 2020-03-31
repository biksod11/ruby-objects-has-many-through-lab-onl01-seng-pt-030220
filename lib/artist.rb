class Artist

  attr_reader :name, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    @name = name
    @genre = genre
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genre
    songs.map {|song| song.genre}
  end






end
