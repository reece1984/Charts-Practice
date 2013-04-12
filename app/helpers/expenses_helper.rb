module ExpensesHelper
	def expenses_chart1_data
	(4.weeks.ago.to_date..Date.today).map do |date|
		{
			created_at: date,
			amount: Expense.where("date(created_at) =?", date).sum(:amount) 
		}
		end
	end

end
