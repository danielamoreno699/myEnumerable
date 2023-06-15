# Create module that contains functions of Enumerable

module MyEnumerable
  # Implement all function
  def all?
    each do |e|
      return false unless yield(e)
    end
    true
  end

  # Implement any function
  def any?
    each do |e|
      return true if yield(e)
    end
    false
  end

  # Implement filter function
  def filter
    result = []
    each do |e|
      result << e if yield(e)
    end
    result
  end
end
