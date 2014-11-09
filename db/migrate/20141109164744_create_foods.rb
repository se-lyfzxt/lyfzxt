class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :foodname
      t.integer :city_id
      t.string :image

      t.timestamps
    end
  end
end
