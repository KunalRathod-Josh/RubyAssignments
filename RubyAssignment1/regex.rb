#4. Regex for mobile number, email address, name, gender(M / F) and  amount
print "Enter Name: "
name = gets.chomp

print "Enter Gender (M/F): "
gender = gets.chomp

print "Enter Email: "
email = gets.chomp

print "Enter Mobile Number: "
mobile = gets.chomp

print "Enter Amount: "
amount = gets.chomp

def valid_mobile?(mobile)
  /^[6-9]\d{9}$/.match?(mobile)
end

def valid_email?(email)
  /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/.match?(email)
end

def valid_name?(name)
  /^[A-Za-z\s.]{2,50}$/.match?(name)
end

def valid_gender?(gender)
  /^[MFmf]$/.match?(gender)
end

def valid_amount?(amount)
  /^\d+(\.\d{1,2})?$/.match?(amount)
end

puts "Name: #{valid_name?(name) ? 'Valid' : 'Invalid'}"
puts "Gender: #{valid_gender?(gender) ? 'Valid' : 'Invalid'}"
puts "Email: #{valid_email?(email) ? 'Valid' : 'Invalid'}"
puts "Mobile: #{valid_mobile?(mobile) ? 'Valid' : 'Invalid'}"
puts "Amount: #{valid_amount?(amount) ? 'Valid' : 'Invalid'}"
