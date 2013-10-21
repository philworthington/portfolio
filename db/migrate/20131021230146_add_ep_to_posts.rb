class AddEpToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :encrypted_password, :string, :default => "", :null => false

  end
end
