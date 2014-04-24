class Dog
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
  def one_month_older(growth)
    # weight increases by minimum 1, plus growth rate increase
    @weight += 1 + (@weight * growth)
    print @name + " weighs " + @weight.to_i.to_s + ' pounds'
  end
  def speak(age)
    if age < 17
      puts "ruff!"
    else
      puts "RUFF! RUFF!"
    end
  end
end

dog = Dog.new("Boomer", 4) # Boomer is born
puts "Boomer is born and weighs 3 lbs."
puts
age = 0  # initial age
growth = 2.75  # initial growth rate
18.times do
    age += 1
    growth = growth/2
    puts "It's now one month later..."
    dog.one_month_older(growth)
    if age == 1 # singular 'month' 
        puts ' and is ' + age.to_s + ' month old.'
    else # plural, months
        puts ' and is ' + age.to_s + ' months old.'
    end
    dog.speak(age)
    puts 
end