# frozen_string_literal: true

# rubocop:disable Style/EachWithObject
# rubocop:disable Style/Semicolon
print [1, 2, 3, 4, 5].reduce([]) { |arr, el| arr << el if el.odd?; arr }
# rubocop:enable Style/EachWithObject
# rubocop:enable Style/Semicolon
