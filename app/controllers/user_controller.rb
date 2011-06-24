class UserController < ApplicationController
  def show
    @user = current_user
    @histories = @user.histories
  end
  
  def update
    current_user.add_history(params)
    redirect_to :action => :show
  end

end
