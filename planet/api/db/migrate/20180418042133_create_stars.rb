class CreateStars < ActiveRecord::Migration[5.2]
  def change
    create_table :stars do |t|
      t.string :name
      t.integer :width
      t.integer :length

      t.timestamps
    end
  end
end
