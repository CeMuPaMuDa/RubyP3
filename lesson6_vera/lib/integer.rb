# frozen_string_literal: true

class Integer
  def create_matrix
    mx = []
    times { mx << Array.new(self) { rand(-50..50) } }
    mx
  end
end
