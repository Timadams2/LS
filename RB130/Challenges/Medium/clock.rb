#problem
# create a clock that doesnt worry about dates
# the clock should be able to add and subtract minutes from time represented by clock object
  # when adding and subtracting minutes, a new clock object is created
# two clocks with the same times should be equal
# use only arithmetic operations to complete this

#examples
# constuctor method that takes two arguments and converts it to a time 
  # the first number being hours and second minutes, if there is a second
# class method names at
  # returns clock value as integer at the given time as the argument
  # if one integer is given as an argument, that is the hour
    # with 00 as minutes
  # if there is two integers given as arguments
    # first is hour and second is minutes
# to_s isntance method
  # takes the time and return it as string version, always with two igits for hour and two digits for minutes sperated by :
  # if you add to it, its adds minutes 
    # adding to the object 60 would add an hour
    # works if its goes negative
# + and - methods that add or subtract minutes
#data structure
# time will be an integer
# to_s method will be what converts the number to look like a normal digital clock to look at
# need a way to compare them

#algorithm
# constructor method
  # initlize @time and assig to the first argument * 60
  # then add the second argument to that number to get the full time
    # second argument defaults to 0 if none given
# at class method
  # calls for a new object using the constructor
# + instance method
  # add the minutes given to it as an argument 
  # if it goes over 1440, start back at 0
# - instance method
  # subtrat the number given as the argument until it gets to 0 in which is goes to 1440
# to_s instance method
  # take @time and divides it by 60 and assign that value to hours
  # then subtract the amount of minutes the hours hand create from time and makes the remainder the minutes
  # then return the necesarry format
# == instance method
  # determines if the @time is the same as the new objects time
# minutes to hours instance method
  # takes a time in minutes and hour and changes it to an array of hours and minutes
  # divided the minutes by 60
    # if more than 24, subtract by 24 until it is less than 24

class Clock
  attr_accessor :time
  
  def initialize(hours, minutes)
    @time = (hours * 60) + minutes
  end
  
  def self.at(hours, minutes=0)
    new(hours, minutes)
  end
  
  def +(minutes)
    new_time = time + minutes
    until new_time < 1440
      new_time -= 1440
    end
    new_time
  end
  
  def -(minutes)
    new_time = time + minutes
    until new_time > 0
      new_time += 1440
    end
    new_time
  end
  
  def to_s
    split_time = minutes_to_hours(time)
    hours, minutes = split_time[0], split_time[1]
    digital_time = []
    if hours < 10
      digital_time << "0#{hours}"
    else
      digital_time << "#{hours}"
    end
    
    if minutes < 10
      digital_time << "0#{minutes}"
    else
      digital_time << "#{minutes}"
    end
    digital_time.join(":")
  end
  
  def ==(other)
    time == other.time
  end
  
  def <(num)
    time < num
  end
  
  def >(num)
    time > num
  end
  
  def minutes_to_hours(minutes)
    hours_minutes = []
    hours_minutes[0] = minutes / 60
    hours_minutes[1] = minutes - (hours_minutes[0] * 60)
    hours_minutes
  end
end
  
clock = Clock.at(6, 30) - 30
puts clock.to_s
