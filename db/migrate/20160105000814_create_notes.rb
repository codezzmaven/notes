class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :titel
      t.string :description

      t.timestamps null: false
    end
  end
end
