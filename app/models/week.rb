class Week < ActiveRecord::Base
  attr_accessible :name, :week_number
  
  has_many :days

end
