# frozen_string_literal: true

arr = []
(1...10).to_a.each_slice(3) { |el| arr << el }
puts "Результат: #{arr}"
