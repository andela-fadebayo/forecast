class ShopquikTodoListsController < ApplicationController
  before_action :authenticate_guest!
  before_action :set_todo_list, only: [:show]

  def index
    @todo_lists = Shopquik::TodoList.all
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
    @todo_list = Shopquik::TodoList.new(todo_list_params)

    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to shopquik_todo_lists_path, notice: 'Shopping list was successfully created.' }
      else
        format.html { render :index, alert: 'Shopping list was not created!' }
      end
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