class ShopquikTodoItemsController < ApplicationController
  before_action :authenticate_guest!
  before_action :set_todo_list
  before_action :set_todo_item, except: [:create]

  def create
    @todo_item = @todo_list.shopquik_todo_items.create(todo_items_params)
    redirect_to @todo_list
  end

  def destroy
    if @todo_item.destroy
      respond_to do |format|
        format.html { redirect_to @todo_list }
        format.js { render template: 'shopquik/todo_items/delete' }
      end
    else
      flash[:alert] = 'List item could not be deleted.'
      redirect_to @todo_list
    end
  end

  def toggle_complete
    t = @todo_item
    t.completed_at.nil? ? t.update_attribute(:completed_at, Time.now) : t.update_attribute(:completed_at, nil)

    respond_to do |format|
      format.html { redirect_to @todo_item }
      format.js { render template: 'shopquik/todo_items/toggle_complete' }
    end
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