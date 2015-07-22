class Budgets::Budget < ActiveRecord::Base
  has_one :budgets_balance_summary
end
