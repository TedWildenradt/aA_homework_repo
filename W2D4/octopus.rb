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

end

def clever(array)

end

def slow_dance(array)

end

def constant_dance(array)

end
