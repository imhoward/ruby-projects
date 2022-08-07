array_to_sort = [50, 29, 15, 12, 1]

def bubble_sort(array)
    sorted = false
    new_array = array

    while !sorted
        switches = 0
        new_array.each_with_index {
            |num, i|
            
            if new_array[i+1] == nil
                next
            end

            if num > new_array[i+1]
                #temp_val = num
                new_array[i] = new_array[i+1]
                new_array[i+1] = num
                switches += 1
            else
                next
            end
        }

        if switches == 0
            sorted = true
        end
    end

    return new_array
end

print bubble_sort(array_to_sort)