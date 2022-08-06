puts "Welcome to Caesar Cipher!"
puts "Enter a string to be encrypted: "

string_to_encrypt = gets

puts "Now enter the key value: "

key_value = gets.to_i

def cipher(string, key)
    new_array = string.chars
    for char in new_array
        puts (char.ord + key - 26)
        if ((char.ord + key) > 122 && char.ord > 97) ||
            ((char.ord + key) > 91 && char.ord <97)
            new_array[new_array.index(char)] = (char.ord + key - 26).chr
        else
            new_array[new_array.index(char)] = (char.ord + key).chr
        end

        puts char
    end  

    return new_array.join
end

puts cipher(string_to_encrypt, key_value)