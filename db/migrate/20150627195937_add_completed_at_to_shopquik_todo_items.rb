class AddCompletedAtToShopquikTodoItems < ActiveRecord::Migration
  def change
    add_column :shopquik_todo_items, :completed_at, :datetime
  end
end
