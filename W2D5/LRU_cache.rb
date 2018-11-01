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
    print @cache
  end

  private
  def push(el)
    @cache.push
  end

  def shift
    @cache.shift
  end

  def check(el)
    @cache.index(el)
  end

end
