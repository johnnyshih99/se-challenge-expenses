class Employee < ActiveRecord::Base
    validates_uniqueness_of :name, :scope => :address
    has_many :expenses
end
