class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :entity, polymorphic: true, index: true
      t.integer :level, default: 0
      t.timestamps null: false
    end
  end
end
