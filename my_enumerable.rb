module MyEnumerable
    def all?
      self.each do |e|
        return false unless yield(e)
      end
      true
    end
 
  end
  