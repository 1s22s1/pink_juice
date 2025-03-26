require_relative '../lib/calendar'

calendar = Calendar.new

puts calendar.year_month_header
puts calendar.wday_header
puts calendar.first_line
puts calendar.other_lines
