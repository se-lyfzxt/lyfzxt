class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :planeno
      t.integer :src_id
      t.integer :dst_id
      t.string :time
      t.integer :price

      t.timestamps
    end
  end
end
