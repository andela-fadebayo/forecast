class Shopquik::TodoList < ActiveRecord::Base
  has_many :shopquik_todo_items, :class_name => 'Shopquik::TodoItem', foreign_key: 'shopquik_todo_list_id'
  belongs_to :guest

  validates_presence_of :title, :description

  def self.set_total_expenses(id)
    todo_list = Shopquik::TodoList.find_by(id: id)
    todo_list.total_expenses = todo_list.shopquik_todo_items.sum(:cost)
    todo_list.save!
  end
end