# frozen_string_literal: true

# rubocop:disable Style/ClassVars
require_relative 'employee'
class Unit
  @@group = []

  def add(ncp, role)
    @@group << Employee.new(ncp, role)
  end

  def edit(mtd, surname, new_value)
    mtd += '=' unless mtd.include? '='
    user = @@group.find { |x| x.surname == surname }
    user.send(mtd, new_value)
  end

  def delete(surname)
    @@group.delete_if { |x| x.surname == surname }
  end

  def sort_unit(sort_param = 'surname')
    @@group.sort_by { |x| x.send(sort_param) }
           .each { |x| puts "#{x.surname} #{x.name} #{x.patronymic}: #{x.role}" }
  end

  def filter(param)
    puts "#{param} (#{@@group.select { |el| el.role == param }.count}):"
    @@group.select { |el| el.role == param }
           .each do |el|
      puts "#{el.surname} #{el.name} #{el.patronymic}"
    end
  end
end
# rubocop:enable Style/ClassVars
