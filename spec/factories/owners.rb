# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    fname "Janet"
    lname "Craven"
    sequence(:email) {|n| "jtbcraven#{n}@aol.com"}
    company "MIT"
  end
end
