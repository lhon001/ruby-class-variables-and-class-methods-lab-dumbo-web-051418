class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    result = {}
    @@genres.each do |song|
      if !result[song]
        num_type = 0
        @@genres.each do |type|
          if song == type
            num_type += 1
          end
        end
        result[song] = num_type
      end
    end
    result
  end

  def self.artist_count
    result = {}
    @@artists.each do |artist|
      if !result[artist]
        num_type = 0
        @@artists.each do |name|
          if artist == name
            num_type += 1
          end
        end
        result[artist] = num_type
      end
    end
    result
  end
  
end
