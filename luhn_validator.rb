module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    # TODO: use the integers in nums_a to validate its last check digit
    nums_a = number.to_s.chars.map(&:to_i)
    check = nums_a.reverse
                .map.with_index{|x,i| i.even? ? x : x*2}
                .map{|i| i > 9 ? i-9 : i}
                .reduce(0,:+) % 10
    check.zero?
  end
end
