class CreateEnterados < ActiveRecord::Migration[5.0]
  def change
    create_table :enterados do |t|
      t.string :enterado
      t.string :post_id
      t.string :user_id

      t.timestamps
    end
  end
end
