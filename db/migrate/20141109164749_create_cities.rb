class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :cityname
      t.string :image

      t.timestamps
    end
  end
end
