
require 'date'

puts 'inter date:'
date = Date.parse(gets)

puts 'day,  week, month, year?:'
measure = gets.chomp

puts 'enter N:'
n = gets.to_i

measures = {'day' => -> (date) {return date.next_day },
            'week' => -> (date) {return date + 7},
            'month' => -> (date) {return date.next_month},
            'year' => -> (date) {return date.next_year}
}

n.times do 
	date = measures[measure].call(date) 
	puts date
end
