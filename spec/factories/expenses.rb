# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense do
    name "MyString"
    description "MyText"
    amount 1.5
    vat false
  end
end
