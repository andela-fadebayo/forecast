class AddTotalToShopquikTodoList < ActiveRecord::Migration
  def change
    add_column :shopquik_todo_lists, :total_expenses, :integer, :limit => 8
  end
end
