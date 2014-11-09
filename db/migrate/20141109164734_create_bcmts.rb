class CreateBcmts < ActiveRecord::Migration
  def change
    create_table :bcmts do |t|
      t.integer :blog_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
