class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create # instantiates and saves the song, and returns the new song created
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(title) #instantiates a song with a name property
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(title) #instantiates and saves a song with a name property
    song = self.create
    song.name = title
    song
  end
    
  def self.find_by_name(name) #can find a song present in @@all by name
    @@all.find{|person| person.name == name}
  end  #returns falsey when a song name is not present in @@all

  def self.find_or_create_by_name(title)
    result = self.find_by_name(title)
    if result
      result
    else
      self.create_by_name(title)
    end
  end

  def self.alphabetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end

  def new_from_filename

  end

  def self.create_from_filename

  end

  def self.destroy_all
    self.all.clear
  end


end







