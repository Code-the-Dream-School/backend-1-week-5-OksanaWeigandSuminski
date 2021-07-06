#write your code here
def translate(string)
    a = string.split(" ") #spliting a string into individual words
    b = a.map {|word| translate_word(word)} # translating each word using the translate_word helper method
    b.join(" ") #joining the words again into a string
end
def translate_word(word)
    first_letter = word[0].downcase
    # translate word that starts with a vowel
    if ["a", "e", "i", "o", "u"].include?(first_letter)
        "#{word}ay"
    else
        # translate word that starts with a consonant
        consonants = []
        consonants << word[0] #first letter in the array
          if ["a", "e", "i", "o"].include?(word[1]) == false
            consonants << word[1] #checks next letter
            if ["a", "e", "i", "o"].include?(word[2]) == false
              consonants << word[2] #if there are 2 consonants, the first vowel is here
            end
          end
        "#{word[consonants.length..-1] + consonants.join + "ay"}" #spliting our original word and concat with "ay"
    end
end
