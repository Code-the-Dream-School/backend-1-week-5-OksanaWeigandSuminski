class Book
# write your code here
def title
    @title
end
def title=(title)
    lower_arr = ['in', 'a', 'and', 'an', 'the', 'on', 'of']
    new_title_array = title.split().map do |word|
        if !lower_arr.include?(word)
            word.capitalize
        else
            word
        end
    end
    new_title_array[0] = new_title_array[0].capitalize
    @title = new_title_array.join(' ')
    end

end
