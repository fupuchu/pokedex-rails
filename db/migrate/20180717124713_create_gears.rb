class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.string :gear_name
      t.string :gear_rarity
      t.references :crafter, foreign_key: true

      t.timestamps
    end
  end
end
