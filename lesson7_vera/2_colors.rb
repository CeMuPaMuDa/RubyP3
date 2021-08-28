COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}.freeze
puts "Хеш: #{COLORS}"
puts "1) #{COLORS.values}"
puts "2) #{COLORS.keys}"
puts "3) #{COLORS.invert}"
puts "3.1) #{COLORS.to_h {|key, value| [value, key] }}"