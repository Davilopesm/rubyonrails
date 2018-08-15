class CreateCapsulas < ActiveRecord::Migration[5.2]
  def change
    create_table :capsulas do |t|
      t.string :name
      t.string :instrucoes_preparo
      t.string :tempo_preparo
      t.references :tipo, foreign_key: true, index: false
    end
  end
end
