require_relative 'my_enumerable'

class MyList
  def initialize(*elements)
    @list = elements
  end

  include MyEnumerable

  # Implement each method
  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 }) # Output: true
puts(list.all? { |e| e > 5 }) # Output: false
puts(list.any? { |e| e == 2 }) # Output: true
puts(list.any? { |e| e == 5 }) # Output: false
p list.filter(&:even?) # Output: [2, 4]
