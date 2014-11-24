class AddIndexToHcmtsUidCrt < ActiveRecord::Migration
  def change
    add_index :hcmts, [:user_id, :created_at]
  end
end
