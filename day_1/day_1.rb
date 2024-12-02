#!/usr/bin/env/ruby

# https://github.com/robbiex88
# https://adventofcode.com/2024/day/1
# https://adventofcode.com/2024/day/1/input


# inputs stored in /Users/rob/Learning/aoc_2024/day_1/input.txt
# part 1
# Within each pair, figure out how far apart the two numbers are; you'll need to add up all of those distances. For example, if you pair up a 3 from the left list with a 7 from the right list, the distance apart is 4; if you pair up a 9 with a 3, the distance apart is 6.

path = "/Users/rob/Learning/aoc_2024/day_1/input.txt"
column_1 = []
column_2 = []
differences = []

File.foreach(path) { |line|
	line = line.chomp.split
	column_1 << line[0]
	column_2 << line[1]
}

column_1.sort!
column_2.sort!

total_difference = 0
column_1.each_index { |index|
	differences << (column_1[index].to_i - column_2[index].to_i).abs
}

differences.each do |element|
	total_difference += element
end

# 1189304
puts "#{total_difference}"

# part 2
# Calculate a total similarity score by adding up each number in the left list after multiplying it by the number of times that number appears in the right list.

similarity_score = 0
column_1.each { |element|
	similarity_score += element.to_i * column_2.count(element)
}

# 24349736
puts "#{similarity_score}"
