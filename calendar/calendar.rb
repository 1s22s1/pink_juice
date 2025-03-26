require 'active_support/all'

class Calendar
  def year_month_header
    "     #{today.strftime("%b")} #{today.year}     "
  end

  def wday_header
    "Su Mo Tu We Th Fr Sa"
  end

  def first_line
    line = ' ' * 20
    line[today.beginning_of_month.wday * 3 + 1] = '1'

    line
  end

  def today
    @today ||= Date.today
  end
end
