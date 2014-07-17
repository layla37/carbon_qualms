class CreateSins < ActiveRecord::Migration
  def change
    create_table :sins do |t|
      t.text :description
      t.float :footprint

      t.timestamps
    end
  end
end
