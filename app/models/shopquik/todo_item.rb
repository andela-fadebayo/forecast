class Shopquik::TodoItem < ActiveRecord::Base
  belongs_to :shopquik_todo_list, :class_name => 'Shopquik::TodoList'
end