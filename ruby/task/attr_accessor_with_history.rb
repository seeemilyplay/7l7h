class Class
   def attr_accessor_with_history(attr_name)
     # your stuff goes here
   end
end

class Surprise
  attr_accessor_with_history :is
end

surprise = Surprise.new
surprise.is = 'a party'
puts %Q(The surprise is #{surprise.is})
surprise.is = 'a puppy'
puts %Q(The surprise is #{surprise.is})
puts "Historic surprises:"
puts surprise.is_history
