class Shopquik::TodoItem < ActiveRecord::Base
  belongs_to :shopquik_todo_list
end
