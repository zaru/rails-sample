class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :goal
      t.integer :homerun
      t.string :type

      t.timestamps null: false
    end
  end
end
