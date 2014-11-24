class CreateHcmts < ActiveRecord::Migration
  def change
    create_table :hcmts do |t|
      t.integer :hotel_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
