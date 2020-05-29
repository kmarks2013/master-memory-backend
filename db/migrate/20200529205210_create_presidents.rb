class CreatePresidents < ActiveRecord::Migration[6.0]
  def change
    create_table :presidents do |t|
      t.string :name
      t.string :term
      t.string :party
      t.string :image_url
      t.integer :president_order

      t.timestamps
    end
  end
end
