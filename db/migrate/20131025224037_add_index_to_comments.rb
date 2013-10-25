class AddIndexToComments < ActiveRecord::Migration
  def change
  end
  add_index :comments, [:commentable_id, :commentable_type]
end
