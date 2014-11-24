class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :city_id
      t.string :route

      t.timestamps
    end
  end
end
