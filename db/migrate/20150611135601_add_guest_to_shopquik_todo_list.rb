class AddGuestToShopquikTodoList < ActiveRecord::Migration
  def change
    add_reference :shopquik_todo_lists, :guest, index: true, foreign_key: true
  end
end
