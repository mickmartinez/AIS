class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :nombre_evento
      t.string :descripcion
      t.date :fecha
      t.time :hora

      t.timestamps
    end
  end
end
