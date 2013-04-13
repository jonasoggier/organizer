class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.text :goal
      t.text :bl1
      t.text :bl2
      t.text :bl3
      t.text :bl4
      t.text :homework
      t.text :resources

      t.timestamps
    end
  end
end
