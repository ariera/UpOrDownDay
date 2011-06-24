class HomeController < ApplicationController
  def index
    redirect_to :controller => 'user', :action => 'show' if user_signed_in?
  end
end
