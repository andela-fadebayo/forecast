class CreateBudgetsMonthlyEarnings < ActiveRecord::Migration
  def change
    create_table :budgets_monthly_earnings do |t|
      t.string :monthyear
      t.integer :earning, limit: 8

      t.timestamps null: false
    end
  end
end
