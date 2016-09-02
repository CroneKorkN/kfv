class AddMamagerToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :manager, :boolean
    add_index :employees, :manager
  end
end
