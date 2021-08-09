# frozen_string_literal: true

def randon_string(file)
  arr = File.readlines(file, chomp: true)
  arr[rand(arr.size - 1)]
end

my = ARGV.first
file_default = 'file.txt'
my = file_default if my.nil?

if my == file_default
  puts randon_string(my)
else
  my_file = File.open(my, 'a+')
  lines = File.readlines(file_default)
  lines.each do |line|
    my_file.write(line)
  end
  puts randon_string(my_file)
end
