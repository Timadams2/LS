class KrispyKreme
  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end
  
  def to_s
    if @filling_type == nil
      filling_string = @filling_type
      puts filling_string
    elsif @glazing == nil
      glazing_string = @glazing_type
      puts glazing_string
    elsif @glazing && @filling_type
      "Plain"
    else
      puts filling_string + "with" + glazing_string
    end
  end
end

donut1 = KrispyKreme.new(nil, nil)
donut2 = KrispyKreme.new("Vanilla", nil)
donut3 = KrispyKreme.new(nil, "sugar")
donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
donut5 = KrispyKreme.new("Custard", "icing")

puts donut1

puts donut2

puts donut3

puts donut4

puts donut5