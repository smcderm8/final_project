class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :phone_number
      t.string :handicap_index
      t.integer :match_id
      t.integer :team_id

      t.timestamps

    end
  end
end
