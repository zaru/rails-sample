class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :iso

      t.timestamps null: false
    end
  end
end
