class Bubble

  def initialize(array)
    @array = array
  end

  def sort
    p "----- Starting Sort ------"
    length = @array.length
    p "Array Length: #{@array.length}"
    loop do
      p "----- Loop Started -----"
      is_swapped = false # assume we need no swap yet
      p "Is Swapped? #{is_swapped}"
      # each time we loop, we decrement our loop by 1 -> aka i--
      (length-1).times do |i|
        p "----- Interior loop started ------"
        p "Incrementor: #{i}"

        if (@array[i] > @array[i+1]) # compare pairs
          #if so, we swap the values
          @array[i], @array[i+1] = @array[i+1], @array[i]
          # and let ourselves know they swapped
          is_swapped = true
          p "Swapped pair #{@array[i]} with #{@array[i+1]}"
        end # end comparison if
      end # end .times
      break if not is_swapped # break the loop if is_swapped == false
    end # end loop do
    return @array # return our slowly sorted array
  end # end sort
end # end class

nums = [6,42,13,1,409]
nums_part_duex = [23,55,666,11,14,72,42,3,116,1052]

sorted_nums = Bubble.new(nums_part_duex).sort
# sorted_nums should return 1,6,13,42,409

describe Bubble do
  it "should be sorted" do
    sorted_nums = [3,11,14,23,42,55,72,116,666,1052]

  end
end
