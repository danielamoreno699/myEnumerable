class MyList
  def initialize
    @list = []
  end
end


# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? {|e| e < 5} # => true
list.all? {|e| e > 5}#=> false

# Test #any?
 list.any? {|e| e == 2} #=> true
list.any? {|e| e == 5} #=> false

# Test #filter
list.filter {|e| e.even?} #=> [2, 4]