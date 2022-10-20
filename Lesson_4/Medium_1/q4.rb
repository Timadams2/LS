class Greeting
  def greet(str)
    puts str
  end
end

class Hello < Greeting
  def hi
    greet("Hi")
  end
end

class Goodbye < Greeting
  def bye
    greet("Bye")
  end
end