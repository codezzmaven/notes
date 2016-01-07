class RemoveUserUniquenessFromNotes < ActiveRecord::Migration
  def change
    remove_index :notes, :user_id if index_exists?(:notes, :user_id)
    add_index :notes, :user_id
  end
end
