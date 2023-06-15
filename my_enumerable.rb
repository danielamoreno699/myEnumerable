module MyEnumerable
    def all?
      self.each do |e|
        return false unless yield(e)
      end
      true
    end
  
    def any?
      self.each do |e|
        return true if yield(e)
      end
      false
    end
  
    def filter
      result = []
      self.each do |e|
        result << e if yield(e)
      end
      result
    end
  end
  