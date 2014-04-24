class Dog
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
  # allow name reference via method
  def name 
    @name
  end
  # allow weight reference via method
  def weight 
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
puts
age = 0  # initial age in months
growth = 2.25 # initial growth rate
18.times do
    age += 1
    # dog ages one month
    dog.one_month_older(growth, age)
    # reduce growth rate by half
    growth = growth/2
    # dog bark
    dog.speak(age)
    puts 
end