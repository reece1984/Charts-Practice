class Expense < ActiveRecord::Base
  attr_accessible :amount, :description, :name, :vat, :user_id, :created_at
  belongs_to :user

  def self.search(search)
  	if search
  		where('name LIKE ?', "%#{search}%")
  	else
  		scoped
  	end
  end
end
