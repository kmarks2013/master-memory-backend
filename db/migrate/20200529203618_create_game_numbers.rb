class CreateGameNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :game_numbers do |t|
      t.belongs_to :game, null: false, foreign_key: true
      t.belongs_to :number, null: false, foreign_key: true

      t.timestamps
    end
  end
end
