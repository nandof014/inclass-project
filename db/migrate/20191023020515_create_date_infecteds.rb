class CreateDateInfecteds < ActiveRecord::Migration[6.0]
  def change
    create_table :date_infecteds do |t|
      t.string :date_infected
      t.references :animal, null: false, foreign_key: true
      t.references :disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
