module Budgets::MonthlyEarningsHelper
  def wordify_date
    date = current_guest.budgets_monthly_earnings[0].monthyear
    date_arr = date.split("/");
    month = date_arr[0]

    case month
      when "01"
        month_name = "JAN"
      when "02"
        month_name = "FEB"
      when "03"
        month_name = "MAR"
      when "04"
        month_name = "APR"
      when "04"
        month_name = "MAY"
      when "06"
        month_name = "JUN"
      when "07"
        month_name = "JUL"
      when "08"
        month_name = "AUG"
      when "09"
        month_name = "SEP"
      when "10"
        month_name = "OCT"
      when "11"
        month_name = "NOV"
      when "12"
        month_name = "DEC"
    end

    month_name + "/" + date_arr[1]
  end
end
