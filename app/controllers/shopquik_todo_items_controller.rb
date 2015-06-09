class ShopquikTodoItemsController < ApplicationController
  before_action :authenticate_guest!
  before_action :set_todo_list
  before_action :set_todo_item, except: [:create]

  def create
    @todo_item = @todo_list.shopquik_todo_items.create(todo_items_params)
    redirect_to @todo_list
  end


  private

  def set_todo_list
    @todo_list = Shopquik::TodoList.find(params[:shopquik_todo_list_id])
  end

  def set_todo_item
    @todo_item = @todo_list.shopquik_todo_items.find(params[:id])
  end

  def todo_items_params
    params.require(:shopquik_todo_item).permit(:item, :quantity, :cost)
  end
end