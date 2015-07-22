class AddGuestToBudgetsMonthlyEarning < ActiveRecord::Migration
  def change
    add_reference :budgets_monthly_earnings, :guest, index: true, foreign_key: true
  end
end
