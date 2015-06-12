class ShopquikTodoListsController < ApplicationController
  before_action :authenticate_guest!
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]

  def index
    @todo_lists = current_guest.shopquik_todo_lists.order("updated_at DESC")
  end

  def show
    respond_to do |format|
      format.js
    end
  end

  def new
    @todo_list = Shopquik::TodoList.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @todo_list = current_guest.shopquik_todo_lists.new(todo_list_params)

    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to shopquik_todo_lists_path, notice: 'Shopping list was successfully created.' }
      else
        format.html { render :index, alert: 'Shopping list was not created!' }
      end
    end
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    respond_to do |format|
      if @todo_list.update(todo_list_params)
        format.html { redirect_to shopquik_todo_lists_path, notice: 'Shopping list updated successfully.' }
      else
        format.html { render :index, alert: 'Failed to update shopping list!' }
      end
    end
  end

  def destroy
    @todo_list.destroy
    respond_to do |format|
      format.html { redirect_to shopquik_todo_lists_path, notice: 'Shopping list was deleted successfully!' }
    end
  end


  private

  def set_todo_list
    @todo_list = Shopquik::TodoList.find(params[:id])
  end

  def todo_list_params
    params.require(:shopquik_todo_list).permit(:title, :description)
  end
end