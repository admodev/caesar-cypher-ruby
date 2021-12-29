ALPHABET_SIZE = 26

def cypher(str)
    shift_array = []
    char_line = str.chars.map(&:ord)
    shift = 1

    ALPHABET_SIZE.times do |shift|
        shift_array << char_line.map do |c|
            ((c + shift) < 123 ? (c + shift) : (c + shift) - 26).chr
        end.join
    end

    shift_array
end

puts cypher("This is a test encryption!")
