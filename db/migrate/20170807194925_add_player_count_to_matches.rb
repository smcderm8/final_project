class AddPlayerCountToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :players_count, :integer
  end
end
