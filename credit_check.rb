
  def new_card 
    card_number = "5541808923795240"
    card_number.reverse.split('')
  end

  def numbers
    new_card.map do |x| 
      x.to_i
    end
  end  

  def double_odd_numbers
    numbers.map.with_index do |item, index|
        if index.odd?
          item * 2

        else
          item  
        end  
    end
  end    

  def double_to_single
  double_odd_numbers.map do |item|
      if item > 9 
        greater = item.to_s
        greater_sum = greater[0].to_i + greater[1].to_i

      else
        item
      end
    end    
  end  

  def total 
    double_to_single.inject(0) do |sum, element| 
      sum + element 
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