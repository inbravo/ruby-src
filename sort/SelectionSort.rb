
# This class performs the selection sort in array
# amit dixit
# Average execution time = O(N has a power of 2)
class SelectionSort
  def initialize(arrInput)
    @array = arrInput
  end

  def sort()

    # Max index of array
    maxIndexOfArr = @array.length - 1;

    # Start from end of array
    for outer in (0..maxIndexOfArr)

      # Select the first element of array
      indexOfLowestElemInLoop = outer

      # Loop from the next element of selected element
      for inner in ((outer+1)..(maxIndexOfArr-1))

#        puts "outer : " + outer.to_s + ", inner : " + inner.to_s + ", indexOfLowestElemInLoop : " + indexOfLowestElemInLoop.to_s

        # Change to > for ascending sort
        if @array[inner] < @array[indexOfLowestElemInLoop]

          # Make is lowest
          indexOfLowestElemInLoop = inner;
        end

          # Swap the elements
          swapValue(outer, indexOfLowestElemInLoop)
      end

    end

    return  @array

  end

  def swapValue(fromIndex, toIndex)

    puts "from : " + @array[fromIndex].to_s + ", to : " + @array[toIndex].to_s
    
    # Store value in temp
    tempVar = @array[fromIndex]

    # Store new value at index
    @array[fromIndex] = @array[toIndex]

    # Store updated value at second location
    @array[toIndex] = tempVar
  end

end

puts("Before sorting :  #{[1, 3, 4, 2, 5, 8, 7, 6, 9, 13, 11, 12, 10, 15, 14]}")

bs = SelectionSort.new([1, 3, 4, 2, 5, 8, 7, 6, 9, 13, 11, 12, 10, 14, 15])

puts("After sorting :  #{bs.sort()}")