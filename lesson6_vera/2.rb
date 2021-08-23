# frozen_string_literal: true

require_relative 'lib/array'
require_relative 'lib/integer'

print 'Введите размер матрицы: '
num = gets.to_i.abs

matrix = num.create_matrix
puts "След квадратной матрицы: #{matrix}\n равен '#{matrix.trace}'"
puts
puts
p 