class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :flag_url
      t.string :region
      t.string :language
      t.string :sub_region
      t.string :capital
      t.integer :population

      t.timestamps
    end
  end
end
