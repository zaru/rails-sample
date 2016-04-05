class CreatePcs < ActiveRecord::Migration
  def change
    create_table :pcs do |t|
      t.string :cpu

      t.timestamps null: false
    end
  end
end
