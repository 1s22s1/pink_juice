require 'active_support/all'

class Calendar
  def date_month_header
    "      #{today.strftime("%b")} #{today.year}      "
  end


  # Date.today.beginning_of_month.wday

  private

  def today
    @today ||= Date.today
  end
end
