# This class performs the bubble sort in array
# amit dixit
# Average execution time = O(N has a power of 2)
class BugbbleSort
  def initialize(arrInput)
    @array = arrInput
  end

  def sort()

    # Maximum array index
    maxArrayIndex = @array.length - 1;

    # Start from end of array
    for outer in (maxArrayIndex).downto(0)

      for inner in (0..(outer - 1))

        # Change to > for ascending sort
        if @array[inner] > @array[inner + 1]

          # Swap the elements
          swapValue(inner, inner + 1)
        end

      end

    end

    return  @array

  end

  def swapValue(fromIndex, toIndex)

    # Store value in temp
    tempVar = @array[fromIndex]

    # Store new value at index
    @array[fromIndex] = @array[toIndex]

    # Store updated value at second location
    @array[toIndex] = tempVar
  end

end

puts("Before sorting :  #{[1, 0, 3, 4, 2, 5, 8, 7, 6, 9, 13, 11, 12, 10, 15, 14,18,16,54,89,17,65,78,44,63]}")

bs = BugbbleSort.new([1,0, 3, 4, 2, 5, 8, 7, 6, 9, 13, 11, 12, 10, 15, 14,18,16,54,89,17,65,78,44,63])

puts("After sorting :  #{bs.sort()}")