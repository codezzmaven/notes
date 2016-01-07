class CreateNoteBundles < ActiveRecord::Migration
  def change
    create_table :note_bundles do |t|
      t.references :bundle, index: true, foreign_key: true
      t.references :note, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
