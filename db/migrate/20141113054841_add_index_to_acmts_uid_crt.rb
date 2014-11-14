class AddIndexToAcmtsUidCrt < ActiveRecord::Migration
  def change
    add_index :acmts, [:user_id, :created_at]
  end
end
