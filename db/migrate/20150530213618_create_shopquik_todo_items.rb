class CreateShopquikTodoItems < ActiveRecord::Migration
  def change
    create_table :shopquik_todo_items do |t|
      t.string :item
      t.integer :quantity
      t.integer :cost
      t.references :shopquik_todo_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
