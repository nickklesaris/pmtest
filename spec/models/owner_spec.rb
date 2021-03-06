require 'spec_helper'

describe Owner do
  before(:each) do
    FactoryGirl.create(:owner)
  end
  it {should validate_presence_of(:fname)}
  it {should validate_presence_of(:lname)}
  it {should validate_presence_of(:email)}
  it {should validate_uniqueness_of(:email)}
  it {should have_many(:buildings)}

  context '#full_name' do
    it 'returns an owners full name' do
      owner = FactoryGirl.create(:owner)
      expect(owner.full_name).to eql("#{owner.fname} #{owner.lname}")
    end
  end
end
