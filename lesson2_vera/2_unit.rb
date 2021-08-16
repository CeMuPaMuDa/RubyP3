# frozen_string_literal: true

class Unit
  @@group = []

  def add(ncp, role)
    @@group << Employee.new(ncp, role)
  end

  def edit(mtd, surname, new_value)
    mtd +='='
    user = @@group.find{|x| x.surname == surname}
    user.send(mtd, new_value)
    

  end

  def delete (surname)
    @@group.delete_if{|x| x.surname == surname}
  end

  def all(sort_param = 'surname')
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

  class Employee
    attr_accessor :name, :surname, :patronymic, :role

    def initialize(nsp, role)
      @surname, @name, @patronymic = nsp.split(' ')
      @role = role
    end
  end
end

COLLECTIVE = [
  ['Иванов Иван Иванович', 'Team Leader'],
  ['Петров Петр Петрович', 'Backend Developer'],
  ['Владимиров Владимир Владимирович', 'Backend Developer'],
  ['Олегов Олег Олегович', 'Frontend Developer'],
  ['Аннушкина Анна Андреевна', 'Frontend Developer'],
  ['Татианко Татьяна Тимуровна', 'QA Engeneer'],
  ['Янейко Янина Ярославовна', 'Designer']
].freeze

office = Unit.new
COLLECTIVE.each do |el|
  office.add(el[0], el[1])
end
office.all('role')
puts '**********************'
office.filter('Frontend Developer')
puts '**********************'
office.edit('role', 'Аннушкина', 'Designer')
office.all
puts '**********************'
office.delete('Татианко')
puts '**********************'
office.all
puts '**********************'
