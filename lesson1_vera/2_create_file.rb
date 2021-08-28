# frozen_string_literal: true

require_relative 'lib/object'
enter = ARGV
file_default = 'file.txt'

bytes = enter.select(&:numeric?).first.to_i.abs
bytes = 80 if bytes.zero?

names = enter.reject(&:numeric?).first
names = file_default if names.nil?

add = 'new'
arr_file = Dir.entries('.')
arr_file.each do |_el|
  names = "#{add}_#{names}" if arr_file.include? names
end

f = File.new(names, 'w')

f.write('7' * bytes)
f.close
