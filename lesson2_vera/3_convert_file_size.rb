# frozen_string_literal: true

require_relative 'float/float_byte_to'

file_name = ARGV.first || 'gothic2.mp3'
file_size = File.size(file_name).to_f
puts "Размер файла : #{file_size.show_size}"
