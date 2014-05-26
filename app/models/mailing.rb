class Mailing < ActiveRecord::Base
  attr_accessible :body, :email, :from, :subject, :avatar, :attachments_attributes
  
  has_many :attachments, :dependent => :destroy
  accepts_nested_attributes_for :attachments, :allow_destroy => true
  
  validates :email, :presence => true
end
