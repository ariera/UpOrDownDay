class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  has_many :histories, :order => 'created_at ASC'
  
  def add_history(params)
    last_history = self.histories.last
    up = params[:vote] == 'up'
    if last_history && last_history.is_from_today?
      last_history.update_attribute(:up, up)
    else
      self.histories << History.new(:up => up)
    end
  end
end
