class AddIndexToEmployee < ActiveRecord::Migration
  def change
    add_index :employees, [:name, :address], unique: true
  end
end
