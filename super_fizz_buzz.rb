1.upto(1000) do |i|
  if i % 3 == 0 and i % 5 == 0 and i % 7 == 0 puts "SuperFizzBuzz"
  elsif i % 3 == 0 and i % 7 == 0  puts "SuperFizz"
  elsif i % 5 == 0 and i % 7 == 0  puts "SuperBuzz"
  elsif i % 3 == 0 and i % 5 == 0 puts "FizzBuzz"
  elsif i % 3 == 0  puts "Fizz"
  elsif i % 5 == 0 puts "Buzz"
  elsif i % 7 == 0 puts "Super" 
  else puts i 
  end
end