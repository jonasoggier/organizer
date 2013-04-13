class DeleteJoinTable < ActiveRecord::Migration
  def change
  	drop_table :days_weeks
  end

end
