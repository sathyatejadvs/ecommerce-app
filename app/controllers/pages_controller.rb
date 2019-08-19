class PagesController < ApplicationController
    layout 'page'

  def home
  end

  def about
  end

  def cart 
  	if user_signed_in?
  		pages_cart_path
  	else 
  		new_user_session_path
  	end
  end
end
