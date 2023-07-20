



def my_min(list)
    result = nil
    list.each_with_index do |el, idx|
        isSmallest = true
        list.each_with_index do |el2, idx2|
            next if idx == idx2
            isSmallest = false if el >= el2
            result = el if isSmallest
        end
    end
    
    result
    
end  #Time Complexity: O(n^2)



def my_min2(list)

    smallest = list.first

    list.each do |el|
        if el <= smallest 
            smallest = el
        end
    end
    smallest

end #Time Complexity : O(n)


def largest_contiguous_subsum(list)

    # list.each do |el|
    #     arr = [el]
    #     (list.index(el)+1...list.length).each do |i|
    #         if (arr + (list[i])).sum > arr.sum
    #             arr << list[i]
    #         else
    #             break
    #         end
    #     end
    # end   



    global = local = list.first

    list[1..-1].each do |el|
        local = [el, local + el].max
        global = [global,local].max
    end

    global  # time complexity = O(n)

end


def dig_deep(arr)
    max = arr.first
    result = []
    arr.each_with_index do |el, idx|
        (idx+1...arr.length).each do |idx2|
            result << arr[idx..idx2]
            if arr[idx..idx2].sum > max 
                max = arr[idx..idx2].sum
            end
        end
    end 

    max
end #time complexity O(n^2)





