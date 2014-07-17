class CreateBadActions < ActiveRecord::Migration
  def change
    create_table :bad_actions do |t|
      t.text :description
      t.float :footprint

      t.timestamps
    end
  end
end
