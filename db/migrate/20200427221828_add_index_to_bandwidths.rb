class AddIndexToBandwidths < ActiveRecord::Migration[6.0]
  def change
    add_index :bandwidths, [:server_id, :interface_name], unique: true
  end
end
