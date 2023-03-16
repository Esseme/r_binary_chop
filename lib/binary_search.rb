class BinaryChop
  def initialize(array, target)
    @array = array
    @target = target
    @low = 0
    @high = array.length - 1
  end

  def r_binary_search
    return -1 if @array.empty? || !@array.include?(@target)

    mid = (@low + @high) / 2

    return mid if @array[mid] == @target

    if @array[mid] < @target
      r_binary_search(@array, @target, mid + 1, @high)
    else
      r_binary_search(@array, @target, @low, mid - 1)
    end
  end
end
