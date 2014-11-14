class AddIndexToBcmtsUidCrt < ActiveRecord::Migration
  def change
    add_index :bcmts, [:user_id, :created_at]
  end
end
