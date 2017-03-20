require 'pry'
valid = false

  def cc_num
    card_number = "5541808923795240"
    card_number.reverse.split('')
  end

  def full_number
    cc_num.map do |cc_digit| 
      cc_digit.to_i
    end
  end  

  def double_digit
    full_number.map.with_index do |value, index|
      if index.odd? 
        value * 2
      else
        value
      end  
    end
  end   

  def double_to_single_digit 
    double_digit.map do |doubled|
      if doubled > 9 
        greater = doubled.to_s
        greater_sum = greater[0].to_i + greater[1].to_i
      else
        doubled
      end
    end    
  end  

  def total 
    double_to_single_digit.inject(0) do |sum, i|
    sum + i
    end
  end

  def valid(total) 
    if (total%10) == 0
      puts "The number is valid!"
    else 
      puts "The number is invalid!"
    end
  end 

valid(total)