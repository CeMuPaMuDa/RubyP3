# frozen_string_literal: true

require_relative 'unit/unit'
require_relative 'unit/collective'

office = Unit.new
COLLECTIVE.each do |el|
  office.add(el[0], el[1])
end

office.sort_unit('role')
puts '**********************'
office.filter('Frontend Developer')
puts '**********************'
office.edit('role', 'Аннушкина', 'Designer')
office.sort_unit
puts '**********************'
office.delete('Татианко')
office.sort_unit
puts '**********************'
