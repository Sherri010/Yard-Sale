class Item < ApplicationRecord
  belongs_to :user

  def get_user
    user = User.find(self.user_id)
    return user.first_name
  end
end
