class Attachment < ActiveRecord::Base
  
  attr_accessible :avatar, :remote_avatar_url
  
  belongs_to :mailing
  
  mount_uploader :avatar, AvatarUploader
  
end
