class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :nomecity
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
