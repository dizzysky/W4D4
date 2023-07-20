def bad_two_sum?(arr, target)
   arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            next if idx1 == idx2
            if num1 + num2 == target 
                return true 
            end
        end
   end

   false 
end #time complexity O(n^2)

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target)
    arr = arr.sort 
    start = arr[0]
    endd = arr.length - 1 
while start <= endd
    case start + endd <=> target 
    when -1
        start += 1 
    when 1 
        endd -= 1
    when 0
        return true 
    end
end

    false
end #time complexity O(n log n)

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def two_sum?(arr,target)
    hash = {}
    arr.each_with_index do |num, idx|
        difference = target - num 
        if hash[difference]
            return true 
        else
            hash[num] = true 
        end
    end

    false
end   # O(n)

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

