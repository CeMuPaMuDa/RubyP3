# frozen_string_literal: true

require_relative 'lib/lorem'

file_default = ARGV.first || 'file.txt'
arr_file = Dir.entries('.')

unless arr_file.include? file_default
  f = File.new(file_default, 'w')
  LOREM.each { |line| f.write(line) }
  f.close 
end

arr = File.readlines(file_default, chomp: true)
puts arr[rand(arr.size - 1)]
