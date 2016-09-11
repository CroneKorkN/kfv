class CreateDuties < ActiveRecord::Migration[5.0]
  def change
    create_table :duties do |t|
      t.references :employee, foreign_key: true
      t.references :customer, foreign_key: true
      t.datetime :date
      t.integer :duration, default: 0, null: false

      t.timestamps
    end
    add_index :duties, :date
  end
end
