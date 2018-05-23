class UsersController < ApplicationController
  def show
    @user = User.find(params.fetch(:id, current_user.id))
    unless current_user == @user
      redirect to root path, notice: "You are not authorized to do that"
    end
    @items = @user.items
    @item = Item.new
  end
end
