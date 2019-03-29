class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :player_throw
      t.string :curb_throw
      t.boolean :win

      t.timestamps
    end
  end
end
