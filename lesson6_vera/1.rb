# frozen_string_literal: true

num = 1

loop do
  print 'Введите число от 1 до 10: '
  num = gets.to_i
  break if (1..10).include? num
end

print [*1..num] + [*1...num].reverse
