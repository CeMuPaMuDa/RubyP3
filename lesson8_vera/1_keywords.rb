# frozen_string_literal: true
require_relative 'lib/keywords'

[
  ['праздник', 'парад', 'День независимости'],
  %w[феерверки праздник концерт],
  %w[пряники феерверки конфеты]
].each { |event| Keywords.new(event) }

puts Keywords.words
