# function provided by launch school to validate input as integer
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

# Gets an integer input from the user.
# allow_zero => true if zero is a valid input.
# prompt_str => a string displayed to user before input.
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

# Initial excercise
num = get_input_int(true, "the numerator")
den = get_input_int(false, "the denominator")

puts "#{num} divided by #{den} is #{num/den}"

# alternative use case
age = get_input_int(false, "your age")
