class Shopquik::TodoList < ActiveRecord::Base
  has_many :shopquik_todo_items, :class_name => 'Shopquik::TodoItem'

  validates_presence_of :title, :description
end
