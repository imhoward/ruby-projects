array_to_sort = [50, 29, 15, 12, 1]

# Worst case = O(n^2), best case = O(n)
def bubble_sort(array)
    sorted = false
    new_array = array

    # Worst case = O(n), best case = O(1)
    while !sorted
        switches = 0

        # O(n-1) -> Iterates through all elements except the last
        new_array.each_with_index {
            |num, i|
            
            if new_array[i+1] == nil
                next
            end

            if num > new_array[i+1]
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