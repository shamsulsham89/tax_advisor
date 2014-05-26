class Pricing < ActiveRecord::Base
  attr_accessible :month, :rate, :status, :time_period
  
  has_and_belongs_to_many :categories
  
  validates :month, :presence => true
  validates :time_period, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 }
  validates :rate, :numericality => { :greater_than_or_equal_to => 0 }
  validates_inclusion_of :status, :in => [true, false]
end
