# frozen_string_literal: true

class Unit
  class Employee
    attr_accessor :name, :surname, :patronymic, :role

    def initialize(nsp, role)
      @surname, @name, @patronymic = nsp.split(' ')
      @role = role
    end
  end
end
