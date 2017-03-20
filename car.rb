class Car 
  attr_accessor :color, :wheel_count

def horn
  puts "BEEEEEP!"
end

def drive (distance)
  "I'm driving #{distance} miles"
end

def report_color
  puts "I am purple"
end

def wheel_count(wheel_count)
  puts "This sweet ride is sitting on #{wheel_count} wheels."
end


def start
  if car == @start
    puts "Starting up!"
  else
    puts "BZZT! Nice try, though."
  end
end

my_car = Car.new
puts my_car.horn
puts my_car.drive(12)
puts my_car.report_color
puts my_car.wheel_count(18)
puts my_car.start

my_second_car = Car.new
puts my_car.wheel_count(2)
puts my_second_car.start

ends
