class Blog < ActiveRecord::Base

  has_many :posts

  def firstFeed
    post = self.posts.order("updated_at DESC").first
    if !post or ((Time.now - post.updated_at).minutes > 5.minutes)
      feed = Feedzirra::Feed.fetch_and_parse(self.url)
      entry = feed.entries.first
      post = Post.new
      post.title = entry.title
      post.url = entry.url
      post.blog = self
      post.save
    end
    post
  end

  belongs_to :team

  delegate :position, :name, :file_name, :to => :team, :prefix => true

end
