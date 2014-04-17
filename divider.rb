def int_check
  input = gets.chomp
  # ask again if input includes '.' or if integer form is 0 for letters or '0'
  while input.include?('.') == true  || input.to_i == 0
    print "C'mon, a real integer.  Not zero or letters.  Try again: "
    input = gets.chomp
  end
  return input
end

print 'Enter your first integer: ' # using print to stay on same line
integer1 = int_check.to_i

print 'Enter your second integer: '
integer2 = int_check.to_i

puts 'You said to calculate ' + integer1.to_s + ' / ' + integer2.to_s

puts 'The answer is ' + (integer1/integer2).to_s + ' with a remainder of ' + (integer1%integer2).to_s
