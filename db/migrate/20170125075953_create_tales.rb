class CreateTales < ActiveRecord::Migration[5.0]
  def change
    create_table :tales do |t|
      t.string :title, null: false
      t.references :root_node

      t.timestamps
    end
  end
end
