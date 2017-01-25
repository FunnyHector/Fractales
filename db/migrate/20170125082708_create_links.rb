class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :signpost, null: false
      t.references :from_node
      t.references :to_node

      t.timestamps
    end
  end
end
