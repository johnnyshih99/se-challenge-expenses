class ExpensesController < ApplicationController
  def index
    @data = {}
    Expense.all.each do |e|
      @data[e.date.strftime("%B %Y")] = 0 if @data[e.date.strftime("%B %Y")].nil?
      @data[e.date.strftime("%B %Y")] += e.amount + e.tax_amount
    end
  end

  def import
    Expense.import(params[:file])
    redirect_to root_url, notice: "Imported #{params[:file].original_filename}"
  end

  def all_data
    @expenses = Expense.all
  end
end
