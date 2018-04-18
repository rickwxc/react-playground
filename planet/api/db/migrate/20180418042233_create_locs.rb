class CreateLocs < ActiveRecord::Migration[5.2]
  def change
    create_table :locs do |t|
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
