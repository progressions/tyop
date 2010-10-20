module Tyop
  def typolize
    original = self
    
    length = original.length
    a = rand(length)
    b = rand(length)
    
    first = original[a]
    second = original[b]
    
    original[a] = second
    original[b] = first
    
    original
  end
end

class String
  include Tyop
end