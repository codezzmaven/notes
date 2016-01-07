class RemoveNoteBundleIdFromBundles < ActiveRecord::Migration
  def change
    remove_column :bundles, :note_bundle_id, :integer
  end
end
