class Class
   def attr_accessor_with_history(attr_name)
     class_eval %Q(
                  #a getter
                  def #{attr_name}
                    @#{attr_name}
                  end

                  #a setter
                  def #{attr_name}=(val)
                    if !@#{attr_name}_history then
                      !@#{attr_name}_history = []
                    end
                    @#{attr_name}_history << val
                    @#{attr_name} = val
                  end

                  #a history getter
                  def #{attr_name}_history
                    @#{attr_name}_history
                  end
                 )
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
