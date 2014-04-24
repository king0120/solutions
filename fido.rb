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
  def one_month_older(growth, age)
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

dog = Dog.new("Boomer", 2) # Boomer is born
# reference name and weight via methods
puts "#{dog.name} is born and weighs #{dog.weight} pounds."
puts # blank line for readability
age = 0  # initial age in months
growth = 2.25 # initial growth rate
18.times do
    age += 1 # dog ages one month
    dog.one_month_older(growth, age)
    growth = growth/2 # reduce growth rate by half
    dog.speak(age) # dog barks
    puts 
end