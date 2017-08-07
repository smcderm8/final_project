class CreateTeeTimes < ActiveRecord::Migration
  def change
    create_table :tee_times do |t|
      t.time :time
      t.integer :team_id
      t.integer :match_id
      t.integer :player_id

      t.timestamps

    end
  end
end
