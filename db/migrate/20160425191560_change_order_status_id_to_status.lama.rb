# This migration comes from lama (originally 20160417082056)
class ChangeOrderStatusIdToStatus < ActiveRecord::Migration
  def change
    rename_column :lama_orders, :order_status_id, :status
  end
end
