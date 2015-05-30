class CreateShopquikTodoLists < ActiveRecord::Migration
  def change
    create_table :shopquik_todo_lists do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
