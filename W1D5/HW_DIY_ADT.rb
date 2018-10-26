require 'byebug'
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
 # p stack = Stack.new
 # p stack.push(1)
 # p stack.push(2)
 # p stack.push(3)
 # p stack.pop
 # p stack.peek


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
# p queue = Queue.new
# p queue.enqueue(1)
# p queue.enqueue(2)
# p queue.enqueue(3)
# p queue.dequeue
# p queue.peek

class Map
  def initialize
    @map = []
  end

  def set(key, value)
    @map.push([key,value]) if @map.empty?
    @map.each do |array|
      return if array[0] == key
    end
    @map.push([key,value])
  end

  def get(key)
    @map.each do |array|
      if array[0] == key
        return array[1]
      end
    end
    nil
  end

  def delete(key)
    i = nil
    @map.each_with_index do |array, idx|
      if array[0] == key
        i = idx
      end
    end
    @map.delete_at(i) unless i.nil?
  end
end

p map = Map.new
p map.set(1,'one')
p map.set(2,'two')
p map.get(2)
p map.delete(1)
p map 
