def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
# have a function that you call to get an input from the user
# with constraints (valid number, non-zero)

# non_zero is a boolean. returns T/F
def get_input_int(allow_zero, prompt_str)

  loop do
    puts "Please enter #{prompt_str}"

    input_str = gets.chomp

    if !valid_number?(input_str)
      puts "Invalid input. Try again."
      next
    end

    input = input_str.to_i

    if !allow_zero && input == 0
      puts "Cannot divide by zero. Try again"
      next
    end

    return input
    end
  end



num = get_input_int(true, "the numerator")
den = get_input_int(false, "the denominator")

puts "#{num} divided by #{den} is #{num/den}"

age = get_input_int(false, "your age")

# num = 0
# den = 0

# loop do
#   puts "Please enter the numerator"
#   num_str = gets.chomp
#   if !valid_number?(num_str)
#     puts "Not a valid number. Try again"
#     next
#   end
#   num = num_str.to_i
#   break
# end


# loop do
#   puts "Please enter denominator"
#   den_str = gets.chomp
#   if !valid_number?(den_str)
#     puts "Not a valid number. Try again"
#     next
#   end

#   den = den_str.to_i

#   if den == 0
#     puts "Cannot divide by zero. Try again"
#     next
#   end

#   break
# end

# puts "#{num} divided by #{den} is #{num/den}!"









# num = 0
# den = 0

# loop do
#   puts "Please enter the numerator:"
#   num_str = gets.chomp
#   puts "Please enter the denominator:"
#   den_str = gets.chomp

#   if !valid_number?(num_str) || !valid_number?(num_str)
#     puts "Invalid input. Try again."
#     next
#   end

#   num = num_str.to_i
#   den = den_str.to_i

#   if den == 0
#     puts "Cannot divide by zero. Try again."
#     next
#   end
#   break
# end

# puts "#{num} divided by #{den} is #{num/den}!"
