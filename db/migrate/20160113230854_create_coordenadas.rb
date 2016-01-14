class CreateCoordenadas < ActiveRecord::Migration
  def change
    create_table :coordenadas do |t|
      t.integer :ot
      t.float :lat
      t.float :lon

      t.timestamps null: false
    end
  end
end
