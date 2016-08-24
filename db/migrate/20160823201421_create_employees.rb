class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
    add_index :employees, :name
  end
end
