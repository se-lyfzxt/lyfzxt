class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :trainno
      t.integer :src_id
      t.integer :dst_id
      t.string :time
      t.integer :price

      t.timestamps
    end
  end
end
