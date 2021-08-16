# frozen_string_literal: true

require_relative 'float_to_byte'

class Float
  # TO_BYTES = 2**10
  def bytes_to_kb
    self / TO_BYTES
  end

  def bytes_to_mb
    bytes_to_kb / TO_BYTES
  end

  def bytes_to_gb
    bytes_to_mb / TO_BYTES
  end

  def bytes_to_tb
    bytes_to_gb / TO_BYTES
  end

  def show_size
    if self < 1.0.kilobytes then "#{round(2)} байт"
    elsif self < 1.0.megabytes then "#{bytes_to_kb.round(2)} Кб"
    elsif self < 1.0.gigabytes then "#{bytes_to_mb.round(2)} Мб"
    elsif self < 1.0.terabytes then "#{bytes_to_gb.round(2)} Гб"
    else
      "#{bytes_to_tb.round(2)} Тб"
    end
  end
end
