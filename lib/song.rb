class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create # returns the song instance that was initialized and saved.
    song = self.new
    self.all << song
    song
  end

  def new_by_name

  end

  def create_by_name

  end

  def find_by_name

  end

  def find_or_create_by_name

  end

  def alphabetical

  end

  def new_from_filename

  end

  def self.create_from_filename

  end

  def self.destroy_all
    self.all.clear
  end


end
