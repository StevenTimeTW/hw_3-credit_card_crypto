def validate_checksum(number)
  # TODO: use the integers in nums_a to validate its last check digit
  nums_a = number.to_s.chars.map(&:to_i)
  check = nums_a.reverse
              .map.with_index{|x,i| i.even? ? x : x*2}
              .map{|i| i > 10 ? i-9 : i}
              .reduce(0,:+) % 10
  check.zero?
end


number = 79927398713
nums_a = number.to_s.chars.map(&:to_i)
sum = nums_a.reverse
            .map.with_index{|x,i| i.even? ? x : x*2}
            .map{|i| i > 9 ? i-9 : i}
            .reduce(0,:+) % 10
puts sum

puts validate_checksum(12344)
