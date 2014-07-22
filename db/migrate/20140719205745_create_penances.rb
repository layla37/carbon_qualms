class CreatePenances < ActiveRecord::Migration
  def change
    create_table :penances do |t|
      t.string :description
      t.float :footprint

      t.timestamps
    end
  end
end
