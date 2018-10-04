def bad_two_sum?(arr, target)
  start = Time.now
  sum = []
  arr.each_with_index do |el,i|
    arr[i+1..arr.length].each_with_index do |el2, i2|
      sum << (el + el2)
    end
  end
  end_time = Time.now
  p (end_time - start)*1000
  sum.include?(target)
end

def two_sum2?(arr, target)
  start = Time.now
  sorted = arr.sort
  sorted.each do |n|
    if sorted.include?(target - n)
      end_time = Time.now
      p (end_time - start)*1000
      return true
    end
  end
  end_time = Time.now
  p (end_time - start_time)*1000
  false
end

bad_two_sum?([0, 1, 5, 7], 6)
two_sum2?([0, 1, 5, 7], 6)
