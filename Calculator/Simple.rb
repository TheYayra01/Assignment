#gets and chomp and methods
#gets - reads user input
#chomp - makes code compact i guess, to remove the newline character at the end of strings.
#to_i - to i nt


def get_values
    [gets, gets, gets].map{ |string| string.chomp.to_i }
end

puts "Would you like to [a]dd, [m]ultiply, [s]ubtract or [d]ivide?"                   
feedback = gets.chomp  

case feedback[0].downcase
when 'a'
    puts "Which numbers would you like to add?"
    operator = :+
when 'm'
    puts "Which numbers would you like to multiply?"
    operator = :*
when 's'
    puts "Which numbers would you like to subtract?"
    operator = :-

when 'd' 
    puts "Which numbers would you like to divide?"
    operator = :/
end

answer = get_values.inject(operator)
puts "The answer is #{answer}"
