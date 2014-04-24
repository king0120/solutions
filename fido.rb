class Dog
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
  def name # allow name reference via method
    @name
  end
  def weight # allow weight reference via method
    @weight
  end 
  def one_month_older(growth, rate_reduction, age)
    # rate reduction is initially 1, so no reduction until next month
    growth = growth/100/rate_reduction
    # weight increases by minimum, plus increase from growth rate
    @weight += 1.5 + (@weight * growth)
    puts "It's now one month later..."
    # use print for no line break
    if age == 1 # singular 'month' 
        print "#{@name} is #{age} month old"
    else # plural, months
        print "#{@name} is #{age} months old"
    end
    # convert from float to integer to round down
    puts " and weighs #{@weight.to_i} pounds."
  end
  def speak(age)
    if age < 18
      puts "ruff!"
    else
      puts "RUFF! RUFF!"
    end
  end
end

dog = Dog.new("Baxter", 2) # Boomer is born
# reference name and weight via methods
puts "#{dog.name} is born and weighs #{dog.weight} pounds."
puts # blank line for readability
age = 0  # initial age in months
growth = 225 # initial growth rate
rate_reduction = 1
18.times do
    age += 1 # dog ages one month
    dog.one_month_older(growth, rate_reduction, age)
    dog.speak(age) # dog barks
    rate_reduction = rate_reduction + 2
    puts 
end