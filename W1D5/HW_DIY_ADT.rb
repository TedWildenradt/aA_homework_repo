class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack.push(el)
  end

  def pop
    # removes one element from the stack
    @stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack.last
  end
end


class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end
end

class Map
  def initialize
    @map = []
  end

  def set(key, value)
    self.each do |array|
      return if array[0] == key
    end
    self.push([key,value])
  end

  def get(key)
    self.each do |array|
      if array[0] == key
        return array[1]
      end
    end
    nil
  end

  def delete(key)
    i = nil
    self.each_with_index do |array, idx|
      if array[0] == key
        i = idx
      end
    end
    self.delete_at(i) unless i.nil?
  end
end
