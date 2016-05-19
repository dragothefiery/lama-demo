# This migration comes from lama (originally 20160418124321)
class CreateLamaDeliverySystems < ActiveRecord::Migration
  def change
    create_table :lama_delivery_systems do |t|
      t.string :name
      t.boolean :active
      t.text :description
      t.float :price
      t.integer :currency_id

      t.timestamps null: false
    end
  end
end
