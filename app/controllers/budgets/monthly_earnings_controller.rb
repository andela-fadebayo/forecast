class Budgets::MonthlyEarningsController < ApplicationController
  before_action :authenticate_guest!

  def index
    @home_bg = 'budget-bg'
    @title = 'Budget - Monthly Earnings'
    @monthly_earnings = current_guest.budgets_monthly_earnings.order("updated_at ASC")
    @monthly_earning = Budgets::MonthlyEarning.new
  end

  def show
  end

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @monthly_earning = current_guest.budgets_monthly_earnings.new(me_params)
    respond_to do |format|
      if @monthly_earning.save
        format.html { redirect_to budgets_monthly_earnings_path, notice: 'New monthly earning added.' }
      else
        format.html { render :index, alert: 'Error adding new earning.' }
      end
    end
  end

  def edit
    @monthly_earning = current_guest.budgets_monthly_earnings.find(params[:id].to_i)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    monthly_earning = current_guest.budgets_monthly_earnings.find(params[:id].to_i)
    if monthly_earning.update_attributes(me_params)
      redirect_to index
    end
  end

  def destroy
  end

  private

  def me_params
    params.require(:budgets_monthly_earning).permit(:monthyear, :earning)
  end
end
