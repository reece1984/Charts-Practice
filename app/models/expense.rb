class Expense < ActiveRecord::Base
  attr_accessible :amount, :description, :name, :vat, :user_id, :created_at
  belongs_to :user




end
