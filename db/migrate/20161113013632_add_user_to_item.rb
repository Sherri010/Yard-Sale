class AddUserToItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :user, index: true
  end
end
