class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :comentario
      t.string :post_id
      t.string :user_id

      t.timestamps
    end
  end
end
