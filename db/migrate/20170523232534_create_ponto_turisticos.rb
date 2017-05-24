class CreatePontoTuristicos < ActiveRecord::Migration[5.0]
  def change
    create_table :ponto_turisticos do |t|
      t.string :nome
      t.string :endereco
      t.string :cep
      t.string :cidade
      t.references :estado, foreign_key: true
      t.references :tipo_ponto_turistico, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.integer :raio
      t.float :azimuthe

      t.timestamps
    end
  end
end
