# 修正済み

number = ARGV[0].to_i + 1
p number
number.times do |x|
  number += 1
  if x % 15 == 0
    puts "FizzBuzz!"
  elsif x % 5 == 0
    puts "Buzz!"
  elsif x % 3 == 0
    puts "Fizz!"
  else
    puts x
  end
end


