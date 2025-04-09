#1. wap to display number is prime or not

puts "Enter a number"
num = gets.chomp.to_i

def isPrime(number)
    return false if number<=1

    (2..Math.sqrt(number)).each do |i|
        return false if number % i ==0
    end

    true
end

result = isPrime(num)

if result
    puts "#{num} is prime"
else
    puts "#{num} is not prime"

end