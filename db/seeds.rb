# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Week.create([{ name: 'Week 1', week_number: 1 }, { name: 'Week 2', week_number: 2 }, { name: 'Week 3', week_number: 3 }, { name: 'Week 4', week_number: 4 }, { name: 'Week 5', week_number: 5 }, { name: 'Week 6', week_number: 6 }, { name: 'Week 7', week_number: 7 }, { name: 'Week 8', week_number: 8 }, { name: 'Week 9', week_number: 9 }])

# Day.create([{bl1: "hello"}])

# Per this week (1-9) i
# 	Per week Day (1-5) x 
# 	Assign Week.
# 		week[i].day[x].create
 	#"week#{week_counter}" = Week.create(name: 'Week #{week_counter}', week_number: week_counter)


week_counter = 1


week_array = ["week1", "week2", "week3", "week4", "week5", "week6", "week7", "week8", "week9"]
day_array = ["day1", "day2", "day3", "day4", "day5"]

9.times do 
	week_name = Week.create(name: week_array[week_counter-1], week_number: week_counter)
	day_counter = 1
 	5.times do
 		week_name.days.create(day_of_week: day_counter) 
 		day_counter+= 1
 	end
 	week_counter += 1
end
