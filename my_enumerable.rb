#all?
#any?
#filter

def all_method?(arr)
  arr.each do |ele|
    return false if !yield(ele)
  end
  true
end