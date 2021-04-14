class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :status
      t.integer :age
      t.references :boat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
