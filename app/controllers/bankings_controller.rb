class BankingsController < InheritedResources::Base
  
  before_filter :authenticate_user!
  #layout :user_layout
  
end
