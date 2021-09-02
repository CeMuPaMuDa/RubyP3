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