class CreateCrafters < ActiveRecord::Migration[5.2]
  def change
    create_table :crafters do |t|
      t.string :crafter_class
      t.string :short_name
      t.string :img

      t.timestamps
    end
  end
end
