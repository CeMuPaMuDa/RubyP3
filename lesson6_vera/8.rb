arr = File.readlines('file.txt', chomp: true)
file = File.open('file.txt', "w")

file.puts(arr.shuffle)
file.close