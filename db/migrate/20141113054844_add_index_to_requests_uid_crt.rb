class AddIndexToRequestsUidCrt < ActiveRecord::Migration
  def change
    add_index :requests, [:user_id, :created_at]
  end
end
