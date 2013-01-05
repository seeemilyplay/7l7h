class Class
   def our_attr_accessor(attr_name)
     class_eval %Q(
                  #a getter
                  def #{attr_name}
                    @#{attr_name}
                  end

                  #a setter
                  def #{attr_name}=(val)
                    @#{attr_name} = val
                  end
                 )
   end
end

class Surprise
  our_attr_accessor :is
end

surprise = Surprise.new
surprise.is = 'a party'
puts %Q(The surprise is #{surprise.is})
