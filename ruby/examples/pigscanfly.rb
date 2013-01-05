class Pig
  def oink
    puts 'Oink'
  end
end

pig = Pig.new

puts 'Hello pig!'
pig.oink

puts 'Can pigs fly?'
puts(pig.respond_to? :fly)

Pig.class_eval %Q(
  def fly
    puts 'Fly, fly, up in the sky!'
  end)

puts 'Can pigs fly now?'
puts(pig.respond_to? :fly)

puts 'Then show me please'
pig.fly