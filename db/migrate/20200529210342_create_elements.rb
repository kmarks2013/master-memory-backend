class CreateElements < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |t|
      t.string :name
      t.string :color
      t.string :symbol
      t.float :atomic_weight
      t.integer :atomic_number

      t.timestamps
    end
  end
end
