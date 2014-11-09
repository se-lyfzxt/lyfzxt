class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :city_id
      t.string :time
      t.integer :number
      t.string :note

      t.timestamps
    end
  end
end
