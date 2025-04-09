#2. WAP for students to print their school level according to grade
#e.g -
#if grade is between 1-5 return elementary
#if grade is between 6-8 return middle school
#if grade is between 9-12 return high school
#if grade is between otherwise return college

puts "Enter school grade"
grade = gets.chomp.to_i

case grade
when 1..5
  puts "elementary"
when 6..8
  puts "middle school"
when 9..12
  puts "high school"
else
  puts "college"
end