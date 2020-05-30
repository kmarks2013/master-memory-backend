class CreateElements < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |t|
      t.string :name
      t.string :color
      t.string :symbol
      t.string :atomic_weight
      t.string :bonding_type
      t.string :group_block
      t.string :standard_state
      t.integer :boiling_point
      t.integer :melting_point
      t.integer :year_discovered
      t.integer :atomic_number

      t.timestamps
    end
  end
end
