class CreateBudgetsBalanceSummaries < ActiveRecord::Migration
  def change
    create_table :budgets_balance_summaries do |t|
      t.belongs_to :budgets_monthly_earning, index: true
      t.integer :starting, limit: 8
      t.integer :ending, limit: 8

      t.timestamps null: false
    end
  end
end
