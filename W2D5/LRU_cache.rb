class LRUCache
  def initialize(num)
    @cache = []
    @max_length = num
  end

  def count
    @cache.length
  end

  def add(el)
    if self.count == @max_length && @cache.include?(el)
      @cache.delete(el)
      @cache.push(el)
    elsif self.count == @max_length
      @cache.shift
      @cache.push(el)
    else
      @cache.push(el)
    end
  end

  def show
    print @cache
  end

  # private
  # def push(el)
  #   @cache.push(el)
  # end
  #
  # def shift
  #   @cache.shift
  # end
  #
  # def check(el)
  #   @cache.index(el)
  # end

end
