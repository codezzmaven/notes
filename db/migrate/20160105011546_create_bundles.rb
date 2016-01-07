class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.references :user, index: true, foreign_key: true
      t.references :note_bundle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
