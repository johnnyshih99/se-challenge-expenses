class ChangeScaleInExpenses < ActiveRecord::Migration
  def change
    change_column :expenses, :amount, :decimal, :precision => 8, :scale => 2
    change_column :expenses, :tax_amount, :decimal, :precision => 8, :scale => 2
  end
end
