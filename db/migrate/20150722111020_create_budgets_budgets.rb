class CreateBudgetsBudgets < ActiveRecord::Migration
  def change
    create_table :budgets_budgets do |t|
      t.belongs_to :budgets_balance_summary, index: true
      t.integer :amount, limit: 8

      t.timestamps null: false
    end
  end
end
