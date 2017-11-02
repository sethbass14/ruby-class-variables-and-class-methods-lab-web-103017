class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@artists << @artist
    @@genres << @genre
  #   unless @@artists.include?(@artist)
  #     @@artists << @artist
  #   end
  #
  #   unless @@genre.include?(@genre)
  #     @@genre << @genre
  #   end
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
    hash = {}
    @@genres.each do |style|
      if hash[style] == nil
        hash[style] = 1
      else
        hash[style] += 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |musician|
      if hash[musician] == nil
        hash[musician] = 1
      else
        hash[musician] += 1
      end
    end
    hash
  end

end
