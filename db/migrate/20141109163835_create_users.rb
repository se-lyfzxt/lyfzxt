class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :nickname
      t.string :sex
      t.integer :city_id
      t.string :note
      t.boolean :admin

      t.timestamps
    end
  end
end
