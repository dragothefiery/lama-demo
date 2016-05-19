# This migration comes from lama (originally 20160417083007)
class CreateLamaPaymentSystems < ActiveRecord::Migration
  def change
    create_table :lama_payment_systems do |t|
      t.string :name
      t.boolean :active, default: false
      t.text :description

      t.timestamps null: false
    end
  end
end
