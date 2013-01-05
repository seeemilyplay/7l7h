numbers = nil
(1..10).each do |x|
  if !numbers then
    numbers = []
  end
  numbers << x
end
puts numbers
