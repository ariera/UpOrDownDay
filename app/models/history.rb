class History < ActiveRecord::Base
  belongs_to :user
  
  def down?
    !up?
  end
  
  def is_from_today?
    today = Time.now
    self.created_at.year == today.year && self.created_at.month == today.month && self.created_at.day == today.day
  end
  
end
