module DateHelper
  def date_formatted date, separator
    if date.nil?
      'No Birthday. Edit your profile.'
    else
      date.strftime("%d #{separator} %^B #{separator} %Y")
    end
  end

  def datetime_formatted datetime, s, t
    if datetime.nil?
      "We're not aware when you joined!"
    else
      datetime.strftime("%d #{s} %^B #{s} %Y at %l #{t} %M #{t} %S %p")
    end
  end
end