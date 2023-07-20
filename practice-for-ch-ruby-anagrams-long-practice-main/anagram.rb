



def first_anagram?(string1,string2)

    # result = []

    # string1.each_char.with_index do |char, idx|
    #     worker = char
    #     (0...string1.length).each do |idx2|
    #         worker +=  string1[idx2] unless idx2 == idx
    #         # if worker.length == string1.length
    #         #     result << worker
    #         # end
    #     end
    #     result << worker
    # end
    # p result
    # result.include?(string2)

    anagrams = string1.chars.permutation.map(&:join)

    anagrams.include?(string2)



end



# first_anagram?("elvis", "lives")


def second_anagram?(string1, string2)
    string1.each_char do |char|
        if string2.chars.find_index(char) != nil
            string2 = string2.chars
            string2.delete_at(string2.find_index(char))
            string2 = string2.join
        end

    end
    
    string2.empty?
end


# p 
# p first_anagram?("basiparachromatin","marsipobranchiata")
# p second_anagram?("basiparachromatin", "marsipobranchiata")



def third_anagram?(string1,string2)
    sorted_1 = jumble_sort(string1)
    sorted_2 = jumble_sort(string2)

    sorted_1 == sorted_2

end # O(nlogn)

def jumble_sort(str)
    alphabet = ('a'..'z').to_a
    sorted = false
    until sorted
        sorted = true
        (0...str.length - 1).to_a.each do |i|
            if alphabet.index(str[i]) > alphabet.index(str[i + 1])
                str[i], str[i + 1] = str[i + 1], str[i]
                sorted = false
            end
        end
    end
    str
end   


p third_anagram?("gizmo", "sally")
p third_anagram?("elvis", "lives")




