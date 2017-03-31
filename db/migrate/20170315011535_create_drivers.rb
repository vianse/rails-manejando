class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :description
      t.string :estado
      t.string :plataforma
      t.string :photo
      t.string :user_id

      t.timestamps
    end
  end
end
