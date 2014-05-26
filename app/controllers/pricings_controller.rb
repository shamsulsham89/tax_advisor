class PricingsController < InheritedResources::Base
  
  before_filter :authenticate_user!
  #layout :user_layout
  
  def user_pricings
    
  end
  
end
