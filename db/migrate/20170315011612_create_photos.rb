class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :driver_id
      t.string :photo
      t.string :user_id

      t.timestamps
    end
  end
end
