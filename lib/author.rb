class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Author.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.artist = self
  end

  def add_post_by_title
    post = Post.new(name)
    add_post(post)
  end

  def self.post_count
    Post.all.count
  end

end
