# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :building do
    address "60 Francis Wyman RD"
    city "Burlington"
    state "MA"
    postcode "01803"
    description ""
    owner
  end
end
