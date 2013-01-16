class Queen
  def speak
    'To my loyal subjects, I say this ...'
  end
end

def printSpeech(v)
  puts v.speak
end

queen = Queen.new
printSpeech(queen)
