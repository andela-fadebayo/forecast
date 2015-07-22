class Budgets::MonthlyEarningsController < ApplicationController
  before_action :authenticate_guest!

  def index
    @home_bg = 'budget-bg'
    @title = 'Budget - Monthly Earnings'
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
