class History < ActiveRecord::Base
  belongs_to :user
  
  def down?
    !up?
  end
end
