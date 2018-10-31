class LRUCache
  def initialize(num)
    @cache = []
    @max_length = num 
  end

  def count
    @cache.length
  end

  def add(el)
    raise SizeError unless count <
  end

  def show

  end

  private
  def push(el)
    @cache.push
  end

end
