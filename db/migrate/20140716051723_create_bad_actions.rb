class CreateBadActions < ActiveRecord::Migration
  def change
    create_table :bad_actions do |t|
      t.string :description
      t.integer :footprint

      t.timestamps
    end
  end
end
