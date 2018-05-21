class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)
    @item.save
  end

  def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy
  end

   private

   def item_params
     params.require(:item).permit(:name, :private)
   end


end
