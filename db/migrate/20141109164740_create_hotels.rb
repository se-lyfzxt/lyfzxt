class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :hotelname
      t.integer :attraction_id
      t.string :address
      t.string :tel
      t.integer :price

      t.timestamps
    end
  end
end
