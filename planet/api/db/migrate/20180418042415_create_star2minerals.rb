class CreateStar2minerals < ActiveRecord::Migration[5.2]
  def change
    create_table :star2minerals do |t|
      t.integer :star_id
      t.integer :mineral_id
      t.integer :loc_id
      t.integer :max_qty

      t.timestamps
    end
  end
end
