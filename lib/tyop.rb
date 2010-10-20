module Tyop
  LOWERCASE_LETTERS = ('a'..'z').to_a
  UPPERCASE_LETTERS = ('A'..'Z').to_a
  LETTERS = LOWERCASE_LETTERS + UPPERCASE_LETTERS
  
  def typolize(count=1)
    original = self.dup
    
    length = original.length
    
    count.times do
      a = rand(length)
    
      l = LETTERS.length
        
      original[a] = LETTERS[rand(l)]
    end
    
    original
  end
end

class String
  include Tyop
end