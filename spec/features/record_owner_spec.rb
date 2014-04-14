require 'spec_helper'

feature 'add an owner', %Q{As a real estate associate
I want to record a building owner
So that I can keep track of our relationships with owners
} do

#Acceptance Criteria:
#
#    I must specify a first name, last name, and email address
#    I can optionally specify a company name
#    If I do not specify the required information, I am presented with errors
#    If I specify the required information, the owner is recorded and I am redirected to enter another new owner

scenario 'create a valid owner' do
  owner = FactoryGirl.create(:owner)
  visit new_owner_path
  fill_in 'owner_fname', with: 'Jane'
  fill_in 'owner_lname', with: 'Dodo'
  fill_in 'owner_email', with: 'jane.dodo@gmail.com'
  fill_in 'owner_company', with: ''

click_button 'Create Owner'
expect(page).to have_content('Owner created.')
end
end
