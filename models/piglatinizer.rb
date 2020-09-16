class PigLatinizer 
    attr_accessor :string

    # def initialize(input)
    #     @string = input
    # end 

    def piglatinize(string)
        word_array = string.split(" ")
        piglatinized_array = word_array.map {|word| translate(word)}
        piglatinized_array.join(" ")
    end

    def translate(str)
        if str.downcase[0] != str[0]
            downed_string = str.downcase
        else 
            downed_string = str
        end 
        alpha = ('a'..'z').to_a
        vowels = %w[a e i o u]
        consonants = alpha - vowels
    
        if vowels.include?(downed_string[0])
            str + 'way'
        elsif consonants.include?(downed_string[0]) && consonants.include?(downed_string[1]) && consonants.include?(downed_string[2])
            str[3..-1] + str[0..2] + 'ay'
        elsif consonants.include?(downed_string[0]) && consonants.include?(downed_string[1])
            str[2..-1] + str[0..1] + 'ay'
        elsif consonants.include?(downed_string[0])
            str[1..-1] + str[0] + 'ay'
        end
    end
end 