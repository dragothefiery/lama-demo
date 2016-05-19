# This migration comes from lama (originally 20160413084354)
class ChangeCodeToSlug < ActiveRecord::Migration
  def change
    rename_column :lama_products, :code, :slug
    rename_column :lama_sections, :code, :slug
  end
end
