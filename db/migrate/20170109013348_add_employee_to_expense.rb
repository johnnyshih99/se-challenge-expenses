class AddEmployeeToExpense < ActiveRecord::Migration
  def change
    add_reference :expenses, :employee, index: true, foreign_key: true
  end
end
