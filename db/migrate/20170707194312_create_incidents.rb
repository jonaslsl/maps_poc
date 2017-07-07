class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.date :date
      t.string :gender
      t.integer :age
      t.string :veicle
      t.string :state
      t.float :value
      t.string :lat
      t.string :lng
      t.string :events
      t.string :climate
      t.string :speed

      t.timestamps
    end
  end
end
