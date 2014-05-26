class Banking < ActiveRecord::Base
  attr_accessible :name, :account_no, :address1, :address2, :city, :country, :state, :zip_code, :status
  
  
  validates :name, :presence => true
  validates :account_no, :presence => true, :uniqueness => true
  validates :address1, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :country, :presence => true
  validates :zip_code, :presence => true
  validates_inclusion_of :status, :in => [true, false]
    
end