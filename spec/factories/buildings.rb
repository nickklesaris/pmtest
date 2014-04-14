# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :building do
    address "MyString"
    city "MyString"
    state "MyString"
    postcode "MyString"
    description "MyText"
  end
end
