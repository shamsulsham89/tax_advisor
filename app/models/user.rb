class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :account_type_id, :email, :password, :password_confirmation, :remember_me, :category_ids
  
  
  
  
  
#  attr_accessible  :email, :first_name, :last_name, :password, :password_confirmation
#  
#  has_secure_password
#  
  belongs_to :account_type
  
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories
#  
#  
#  
#  
#  validates :first_name, :presence => true
#  validates :last_name, :presence => true
#  
#  validates :email, :presence => true, :uniqueness => true
#  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
#
#  validates :password, :presence => true, :on => :create
#  validates_size_of :password, :within => 6..15, :on => :create
#  before_create { generate_token(:auth_token) }
#  
#  validates :account_type_id, :presence => true
#  
#  
#  
#  
#  def full_name
#    "#{self.first_name }"+" "+ "#{self.last_name}".camelize
#  end
#  
#  def send_password_reset
#    generate_token(:password_reset_token)
#    self.password_reset_sent_at = Time.zone.now
#    save!
#    UserMailer.password_reset(self).deliver
#  end
#
#
#  def generate_token(column)
#    begin
#      
#      self[column] = SecureRandom.urlsafe_base64
#    end while User.exists?(column => self[column])
#  end
  
end
