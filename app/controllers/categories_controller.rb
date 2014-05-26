class CategoriesController < InheritedResources::Base
  
  before_filter :authenticate_user!
  #layout :user_layout
  def user_categories
    @categories = current_user.categories.all
    #raise @categories.inspect
  end
  
end
