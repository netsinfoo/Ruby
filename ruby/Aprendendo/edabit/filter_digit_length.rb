def filter_digit_length(arr, num)

 arr.select {|x| x.to_s.length == num }

end

filter_digit_length([88, 232, 4, 9721, 555], 3)
