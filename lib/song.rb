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
    genre_count_hash = {}

    @@genre.each do |genre|
      if !genre_count_hash[genre]
        genre_count_hash += 1
      end
    end
    genre_count_hash
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
