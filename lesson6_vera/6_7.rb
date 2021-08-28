# frozen_string_literal: true

require_relative 'lib/integer'
print 'Введите целое число для преобразования: '
num = gets.to_i.abs

puts "Число #{num} в 2-ичном формате: #{num.to_a}"
puts "Число #{num} в 8-миричном формате: #{num.to_a(8)}"
puts "Число #{num} в 16-ричном формате: #{num.to_a(16)}"
