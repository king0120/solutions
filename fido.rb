class Dog
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
  def one_month_older(growth)
    @weight = @weight + (@weight * growth)
    print @name + " now weighs " + @weight.to_i.to_s + ' pounds'
  end
  def speak(age)
    if age < 18
      puts "ruff!"
    else
      puts "RUFF! RUFF!"
    end
  end
end

dog = Dog.new("Boomer", 2)
age = 0  # initial age
growth = 5  # initial growth rate
18.times do
    age += 1
    growth = growth/1.8
    dog.one_month_older(growth)
    puts 'and is ' + age.to_s + ' months old.'
    dog.speak(age)
end