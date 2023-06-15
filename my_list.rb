

class MyList
  def initialize(*elements)
    @list = elements
  end

  include MyEnumerable

  def each
    @list.each { |e| yield(e) }
  end
end

list = MyList.new(1, 2, 3, 4)

puts list.all? { |e| e < 5 }    # Output: true
puts list.all? { |e| e > 5 }    # Output: false
puts list.any? { |e| e == 2 }   # Output: true
puts list.any? { |e| e == 5 }   # Output: false
puts list.filter { |e| e.even? } # Output: [2, 4]
