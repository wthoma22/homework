ready_to_quit = false
goodbye_count = 0
puts "HELLO, THIS IS A GROCERY STORE!"

until ready_to_quit
  input = gets.chomp
   if input.empty?
       puts "HELLO?"
   elsif input == input.downcase
    puts "I AM HAVING A HARD TIME HEARING YOU."
   elsif input == "GOODBYE!"
      if goodbye_count == 0
       goodbye_count += 1
        puts "ANYTHING ELSE I CAN HELP WITH?" 
      else ready_to_quit = true
        puts "THANK YOU FOR CALLING!"
      end
    elsif input = input.upcase
       puts "NO, THIS IS NOT A PET STORE."
    end
end