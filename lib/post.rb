class Post
  attr_accessor :name, :author

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
end
