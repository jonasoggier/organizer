class CreateDaysWeeks < ActiveRecord::Migration
  def change
    create_table :days_weeks do |t|
      t.integer :week_id
      t.integer :day_id

      t.timestamps
    end
  end
end
