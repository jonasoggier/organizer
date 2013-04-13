class Day < ActiveRecord::Base
  attr_accessible :bl1, :bl2, :bl3, :bl4, :goal, :homework, :resources, :day_of_week

  belongs_to :week
  
end
