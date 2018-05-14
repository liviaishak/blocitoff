class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)

     if @item.save
       flash[:notice] = "Item was saved."
       redirect_to current_user
     else
       flash.now[:alert] = "There was an error saving the item. Please try again."
       render current_user
     end
   end

   private

   def item_params
     params.require(:item).permit(:name)
   end


end
