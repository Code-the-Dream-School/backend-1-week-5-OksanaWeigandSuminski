#write your code here
        def echo (param)
        str = "#{param}"
        end

    def shout (param)
        str = "#{param.upcase}"
    end
    def repeat (param, times = 2)
        str = param
        for x in 0...times-1
            str += " " + param
        end
        return str
    end
    def start_of_word (word, letter)
        first_letter = word[0..letter-1]
    end
    def first_word (word)
        first = word.split(" ")
        returns = first [0]
    end
    

    def titleize(words)
        lower_arr = ['over', 'a', 'and', 'the', 'of']
        new_phrase_array = words.split().map do |word|
            if !lower_arr.include?(word)
                word.capitalize
            else
                word
            end
        end
        new_phrase_array[0] = new_phrase_array[0].capitalize
        words = new_phrase_array.join(' ')
    end

