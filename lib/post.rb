class Post
attr_accessor :posts, :author, :title

@@all = []

  def initialize(title)
    @title = title 
    @@all << self
  end

  def self.all 
     @@all
  end

  def author_name
  self.author.name != nil ? self.author.name : nil
  end

end
