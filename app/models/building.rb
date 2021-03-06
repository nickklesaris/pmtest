class Building < ActiveRecord::Base
  belongs_to :owner
STATES = %w(AK AL AR AZ CA CO CT DC DE FL GA HI IA ID IL IN KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ NM NV NY OH OK OR PA RI SC SD TN TX UT VA VT WA  WI WV WY)

  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true, inclusion: {in:STATES}
  validates :postcode, presence: true
  validates :owner, presence: true
end
