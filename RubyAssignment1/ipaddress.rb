#5. Write a program to find IP address class

puts "Enter IP address"
ip = gets.chomp

first_octet = ip.split(".")[0].to_i

case first_octet
when 1..126
  puts "Class A"
when 128..191
  puts "Class B"
when 192..223
  puts "Class C"
when 224..239
  puts "Class D (Multicast)"
when 240..254
  puts "Class E (Experimental)"
else
  puts "Invalid or Reserved IP"
end
