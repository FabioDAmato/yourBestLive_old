class CreateLocales < ActiveRecord::Migration[5.2]
  def change
    create_table :locales do |t|
      t.string :nlocale
      t.string :indirizzo
      t.string :backline
      t.integer :pagamento
      t.integer :capacita
      t.string :genere
      t.string :telefono
      t.string :citta

      t.timestamps
    end
  end
end
