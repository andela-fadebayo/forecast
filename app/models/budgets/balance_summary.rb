class Budgets::BalanceSummary < ActiveRecord::Base
  belongs_to :budgets_monthly_earning
  has_one :budgets_budget
end
