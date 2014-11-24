class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.integer :city_id
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
