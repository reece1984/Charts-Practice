# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ name: role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email name: ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

user = User.find_or_create_by_email name: ENV['USER_NAME'].dup, :email => ENV['USER_EMAIL'].dup, :password => ENV['USER_PASSWORD'].dup, :password_confirmation => ENV['USER_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :user

user = User.find_or_create_by_email name: ENV['VIP_NAME'].dup, :email => ENV['VIP_EMAIL'].dup, :password => ENV['VIP_PASSWORD'].dup, :password_confirmation => ENV['VIP_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :VIP

user = User.find_or_create_by_email name: "James Reece", :email => "james@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user

user = User.find_or_create_by_email name: "Earnie", :email => "earnie@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user

user = User.find_or_create_by_email name: "Sid", :email => "sid@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user


puts 'CREATING EXPENSES'

7.times do 
Expense.create(name: "Lunch", description: "At the Ritz", amount: 500, vat: "true", user_id: 1, created_at: 10.weeks.ago)
Expense.create(name: "Dinner", description: "At the Ivy", amount: 600, vat: "false", user_id: 4, created_at: 10.weeks.ago)
Expense.create(name: "Lunch", description: "At the Rennaisance", amount: 200, vat: "true", user_id: 1, created_at: 9.weeks.ago)
Expense.create(name: "Dinner", description: "At the Compass", amount: 30, vat: "true", user_id: 1, created_at: 9.weeks.ago)
Expense.create(name: "Lunch", description: "At McDonalds", amount: 20, vat: "true", user_id: 4, created_at: 4.weeks.ago)
Expense.create(name: "Hire Car", description: "For the journey to Manchester", amount: 80, vat: "true", user_id: 1, created_at: 1.week.ago)
Expense.create(name: "Petrol", description: "For the journey to Manchester", amount: 60, vat: "false", user_id: 1, created_at: 1.week.ago)
Expense.create(name: "Stationary", description: "Printing", amount: 180, vat: "true", user_id: 2, created_at: 2.weeks.ago)
Expense.create(name: "Petrol", description: "For the journey to Manchester", amount: 90, vat: "false", user_id: 2, created_at: 7.weeks.ago)
Expense.create(name: "Lunch", description: "At the Hotdog stand", amount: 10, vat: "true", user_id: 6, created_at: 1.weeks.ago)
Expense.create(name: "Hire Car", description: "For the journey to Manchester", amount: 55, vat: "true", user_id: 2, created_at: 6.weeks.ago)
Expense.create(name: "Lunch", description: "At the compass", amount: 20, vat: "true", user_id: 5, created_at: 2.weeks.ago)
Expense.create(name: "Stationary", description: "Printing the whole project's drawings", amount: 600, vat: "true", user_id: 2)
Expense.create(name: "Miscellanous", description: "Various Items", amount: 150, vat: "true", user_id: 2, created_at: 2.weeks.ago)
Expense.create(name: "Hire Car", description: "For the journey to Kent", amount: 60, vat: "true", user_id: 2, created_at: 8.weeks.ago)
Expense.create(name: "Lunch", description: "At the canteen", amount: 5, vat: "true", user_id: 5, created_at: 3.weeks.ago)
Expense.create(name: "Petrol", description: "For the journey to Manchester", amount: 50, vat: "false", user_id: 2)
Expense.create(name: "Hire Car", description: "For the journey to Manchester", amount: 150, vat: "false", user_id: 2)
Expense.create(name: "Lunch", description: "At McDonalds", amount: 20, vat: "true", user_id: 5, created_at: 3.weeks.ago)
Expense.create(name: "Miscellanous", description: "Various Items", amount: 70, vat: "true", user_id: 6, created_at: 7.weeks.ago)
Expense.create(name: "Stationary", description: "Printing", amount: 40, vat: "false", user_id: 6, created_at: 4.weeks.ago)
Expense.create(name: "Petrol", description: "For the journey to Glasgow", amount: 250, vat: "true", user_id: 3, created_at: 10.weeks.ago)
Expense.create(name: "Miscellanous", description: "Various Items", amount: 40, vat: "true", user_id: 3, created_at: 3.weeks.ago)
Expense.create(name: "Lunch", description: "At the Ritz", amount: 200, vat: "true", user_id: 3, created_at: 8.weeks.ago)
Expense.create(name: "Stationary", description: "Pens", amount: 200, vat: "true", user_id: 3, created_at: 8.weeks.ago)
Expense.create(name: "Lunch", description: "At the Ritz", amount: 300, vat: "true", user_id: 6, created_at: 8.weeks.ago)
Expense.create(name: "Miscellanous", description: "Various Items", amount: 25, vat: "false", user_id: 6, created_at: 10.weeks.ago)

end


