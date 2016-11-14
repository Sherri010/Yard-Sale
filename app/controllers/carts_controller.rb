class CartsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cart = Cart.where(user_id:current_user.id)
    @total = get_total(@cart)
  end

  def create
    item_selected = params[:id]
     new_item = Cart.new({item_id:item_selected,user_id:current_user.id})
    if new_item.save
      flash[:alert] = "You called dibs!"
    else
      flash[:notice] = "oh no! something went wrong...try again"
    end
      get_total(Cart.where(user_id:current_user.id))
      redirect_to items_path
  end

 def destroy
    item = Cart.where(item_id:params[:id],user_id:current_user.id)
    Cart.delete(item.first.id)
    redirect_to mycart_path
 end

private
 def get_total(cart)
   sum = 0.00
   cart.each do |i|
     sum += Item.find(i.item_id).price
   end
   session[:total]=sum
   return sum


 end
end
