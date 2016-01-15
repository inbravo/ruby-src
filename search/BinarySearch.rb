# This class performs the binary search for an integer item in array
# amit dixit
# Average execution time = O(Log N)
class BinarySearch
  def initialize(arrInput)
    @array = arrInput
  end

  def binarySearch(searchValue, from=0, to=nil)

    if(to == nil)
    to = @array.count - 1
    end

    # Calculate the mid of array
    mid = (from + to) / 2

    if(searchValue < @array[mid])
      return binarySearch(searchValue, from, mid - 1)

    elsif(searchValue > @array[mid])
      return binarySearch(searchValue, mid + 1, to)

    else
    return mid
    end

  end

end

bs = BinarySearch.new([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])

puts("12 is at offset #{bs.binarySearch(9)} in array")