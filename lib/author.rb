require 'pry'

class Author 
  
  attr_accessor :name, :posts
  @@posts = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self 
    @@posts += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@posts += 1
    binding.pry
  end
  
  def self.post_count
    @@posts
  end 
  
end