# This migration comes from lama (originally 20160415162219)
class ChangeOrderCurrencyToCurrencyId < ActiveRecord::Migration
  def up
    rename_column :lama_orders, :currency, :currency_id
    change_column :lama_orders, :currency_id, :integer
  end

  def down
    rename_column :lama_orders, :currency_id, :currency
    change_column :lama_orders, :currency, :string
  end
end
