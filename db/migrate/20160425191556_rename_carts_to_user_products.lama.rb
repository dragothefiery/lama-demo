# This migration comes from lama (originally 20160415162155)
class RenameCartsToUserProducts < ActiveRecord::Migration
  def change
    rename_table :lama_carts, :lama_user_products
  end
end
