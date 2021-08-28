# frozen_string_literal: true

require 'set'

class Keywords
  @@keywords = Set.new

  def initialize(keyword)
    keyword.each do |w|
      @@keywords.add w.downcase
    end
  end

  def self.words
    @@keywords
  end
end
[
  ['праздник', 'парад', 'День независимости'],
  %w[феерверки праздник концерт],
  %w[пряники феерверки конфеты]
].each { |event| Keywords.new(event) }

puts Keywords.words
