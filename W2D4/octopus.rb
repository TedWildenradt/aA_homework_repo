# Sluggish Octopus
def sluggish(array)
  len = array.length

  (0...len).reverse_each do |i|
    (0...len - 1).each do |j|
      if array[j] > array[j+1]
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
    end
  end
  array.last
end

def dominant(array)
  array.sort.last
end

def clever(array)
  longest_index = array[0]
  longest_length = array[0].length
  len = array.length
  i = 1
  while i < len
    if array[i].length > longest_length
      longest_index = array[i]
      longest_length = array[i].length
    end
    i += 1
  end
  longest_index
end

def slow_dance(array)

end

def constant_dance(array)

end
