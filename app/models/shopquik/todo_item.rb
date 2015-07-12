class Shopquik::TodoItem < ActiveRecord::Base
  belongs_to :shopquik_todo_list, :class_name => 'Shopquik::TodoList'

  def completed?
    !completed_at.blank?
  end
end