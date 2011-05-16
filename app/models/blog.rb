class Blog < ActiveRecord::Base

  def firstFeed
    feed = Feedzirra::Feed.fetch_and_parse(self.url)
    feed.entries.first
  end

  belongs_to :team

  delegate :name, :file_name, :to => :team, :prefix => true

end
