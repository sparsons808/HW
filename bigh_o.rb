def nested_loop(arry)
    max_length_fish = ''
    arry.each_with_index do |ele1, idx1|
        if ele1.length > max_length_fish
            max_length_fish = ele1
        end
    end
    max_length_fish
end


