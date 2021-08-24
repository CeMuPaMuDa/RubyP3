# frozen_string_literal: true

print [1, 2, 3, 4, 5].each_with_object([]) { |el, arr| arr << el if el.odd?; }
