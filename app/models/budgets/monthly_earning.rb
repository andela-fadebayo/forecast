class Budgets::MonthlyEarning < ActiveRecord::Base
  has_one :budgets_balance_summary
  has_one :budgets_budget, through: :budgets_balance_summary
  belongs_to :guest
end
