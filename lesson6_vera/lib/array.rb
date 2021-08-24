# frozen_string_literal: true

class Array
  def trace
    each_with_object([]) { |i, a| a << i[a.size] }.sum
  end

  def for(num = nil, &block)
    i = 0
    loop do
      break unless block_given?
      each(&block) unless num.instance_of?(Integer) && num <= 0
      i += 1
      break if i >= num.to_i && num != nil
    end
  end
end
