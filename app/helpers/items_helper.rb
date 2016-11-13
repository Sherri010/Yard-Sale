module ItemsHelper
  def get_user item
    user = User.find(item.user_id)
    return user.first_name 
  end
end
