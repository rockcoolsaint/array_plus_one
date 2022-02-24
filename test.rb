def array_plus_1(list)
  return "array can't be empty" if list.empty?
  return nil if list.any? { |item| !item.kind_of? Numeric }
  return nil if list.any? { |item| item < 0 || !item.integer? || item > 9 }

  result = list.join().to_i + 1
  return result.to_s.split('').map(&:to_i)
end

print array_plus_1([3,9,19])