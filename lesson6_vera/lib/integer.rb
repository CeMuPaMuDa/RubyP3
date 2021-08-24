# frozen_string_literal: true

class Integer
  def create_matrix
    mx = []
    times { mx << Array.new(self) { rand(-50..50) } }
    mx
  end

  def to_a(bit_width = 2)
    bit_width = bit_width.to_i.abs
    bit_width = 2 unless [2, 8, 16].include? bit_width
    arr = to_s(bit_width).split('')
    bit_width < 16 ? arr.map(&:to_i) : arr
  end
end
