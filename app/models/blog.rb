class Blog < ActiveRecord::Base

  belongs_to :team

  delegate :name, :to => :team, :prefix => true

end
