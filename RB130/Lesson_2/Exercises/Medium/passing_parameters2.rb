array = %w(raven finch hawk eagle)

def organize(array)
  yield(array)
end

organize(array) { |_, _, *raptors| puts "Raptors: #{raptors.join(', ')}" }