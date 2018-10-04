
# O (n^2)
def my_min
  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
  start_time = Time.now
  holder = list.first

  list.each do |list1|
    list.each do |list2|
      holder = list1 if list1 > list2
    end
  end

  end_time = Time.now
  (end_time - start_time)*1000
end
# O(n)
def my_min2
  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
  holder = list.first
  start_time = Time.now

  list.each do |n|
    holder = n if holder > n
  end

  end_time = Time.now
  holder
  (end_time - start_time)*1000
end

def largest_contiguous_subsum
  list = [5, 3, -7]
  largest_value = 0
  listarr = []

  i = 0
  start_time = Time.now
  while i < list.length
    j  = i
    while j < list.length
      listarr << list[i..j]
      j +=1
    end
    i +=1
  end

  listarr.each{|array| largest_value = array.reduce(:+) if array.reduce(:+) > largest_value}
  p largest_value

  end_time = Time.now
  (end_time - start_time)*1000
end

def lcs
  list = [5, 3, -7]
  start_time = Time.now
  return list.max if list.all?{ |n| n < 1}

  largest_value = 0
  current = 0

  list.each do |num|
    current = current + num
    if current < 0
      current = 0
    end
    largest_value = current
  end
  p largest_value
  end_time = Time.now
  (end_time - start_time)*1000
end
