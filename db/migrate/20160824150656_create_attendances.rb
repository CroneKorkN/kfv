class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.references :employee, foreign_key: true
      t.references :customer, foreign_key: true
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
    add_index :attendances, :date
  end
end
