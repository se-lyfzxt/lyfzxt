class CreateAcmts < ActiveRecord::Migration
  def change
    create_table :acmts do |t|
      t.integer :attraction_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
