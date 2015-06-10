FactoryGirl.define do
  factory :shopquik_todo_item, class: Shopquik::TodoItem do
    item 'Book'
    quantity 3
    cost 150

    shopquik_todo_list
  end
end