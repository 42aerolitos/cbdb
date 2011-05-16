require 'extend_string'

class Team < ActiveRecord::Base

  def file_name
    name = read_attribute(:name)
    name.urlize
  end

  has_many :blogs

end
