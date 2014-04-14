class Owner < ActiveRecord::Base
  has_many :buildings, dependent: :destroy

  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  def full_name
    "#{fname} #{lname}"
  end
end
