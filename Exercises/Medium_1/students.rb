class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate
end