class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :attracname
      t.integer :city_id
      t.string :image

      t.timestamps
    end
  end
end
