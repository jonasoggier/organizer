class AddColumnToDays < ActiveRecord::Migration
  def change
  	add_column :days, :day_of_week, :integer
  end
end
