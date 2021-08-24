# frozen_string_literal: true

class Array
  def trace
    each_with_object([]) { |i, a| a << i[a.size] }.sum
  end

  def for(num = 'forever')
    i = 0
    loop do
      break unless block_given?
      each do |x|
        yield x unless num.instance_of?(Integer) && num <= 0
      end
      i += 1
      break if i >= num.to_i && num != 'forever'
    end
  end
end
