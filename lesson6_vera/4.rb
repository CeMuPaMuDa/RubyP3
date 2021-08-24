# frozen_string_literal: true

require_relative 'lib/array'
# [1, 2, 3].for(-1) { |x| print x }
# [1, 2, 3].for(0) { |x| print x }
[1, 2, 3].for(3) { |x| print x }
# [1, 2, 3].for(nil) { |x| print x }
# [1, 2, 3].for { |x| print x }

# [1, 2, 3].cycle(-1) { |x| print x }
# [1, 2, 3].cycle(0) { |x| print x }
# [1, 2, 3].cycle(3) { |x| print x }
# [1, 2, 3].cycle(nil) { |x| print x }
# [1, 2, 3].cycle { |x| print x }
