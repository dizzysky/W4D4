



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



first_anagram?("elvis", "lives")