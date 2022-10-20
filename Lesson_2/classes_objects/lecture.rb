class Person
  attr_accessor :firstname, :lastname
  
  def initialize(full_name)
    parse_full_name(full_name)
  end
  
  def name
    "#{@firstname} #{@lastname}".strip
  end
  
  def name=(full_name)
    parse_full_name(full_name)
  end
  
  def parse_full_name(full_name)
    parts = full_name.split
    self.full_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

