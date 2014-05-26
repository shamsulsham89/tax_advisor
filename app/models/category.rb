class Category < ActiveRecord::Base
  attr_accessible :description, :name, :status, :pricing_ids
  
  has_and_belongs_to_many :users
  
  has_and_belongs_to_many :pricings
  accepts_nested_attributes_for :pricings
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates_inclusion_of :status, :in => [true, false]
  
end
