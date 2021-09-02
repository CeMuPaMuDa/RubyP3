AUTHORS = { 
  'Design Patterns in Ruby' => ['Russ Olsen'],
  'Eloquent Ruby' => ['Russ Olsen'],
  'The Well-Grounded Rubyist' => ['David A. Black'],
  'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
  'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
  'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
  'Ruby Under a Microscope' => ['Pat Shaughnessy'],
  'Ruby Performance Optimization' => ['Alexander Dymo'],
  'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}.freeze

hash_authors =  AUTHORS.map{|_k,v| v}.flatten.tally.sort.to_h
max = hash_authors.select{|a,b| a == hash_authors.key(hash_authors.values.max)}
hash_authors.delete(max.keys.first)
result = max.merge(hash_authors).each {|k,v| puts "#{k} : #{v}"}

