# This migration comes from lama (originally 20160413154208)
class MakeUsersEmailAndPasswordNullable < ActiveRecord::Migration
  def change
    change_column_null :lama_users, :email, true
    change_column_null :lama_users, :encrypted_password, true
  end
end
