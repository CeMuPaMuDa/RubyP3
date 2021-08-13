# Создайте класс Unit, моделирующий коллектив из семи человек:
#  руководитель, два бэкенд-разработчика, два фронтенд-разработчика, тестировщик и дизайнер.
#   Для моделирования каждого сотрудника создайте вложенный класс Unit::Employee.
#    Объект класса Unit должен позволять добавлять, удалять, редактировать сотрудников
#     и выводить их полный список в алфавитном порядке. Кроме того, создайте метод
#      или набор методов, позволяющих фильтровать команду по ролям — например,
#       запрашивать список тестировщиков или бэкенд-разработчиков.

class Unit

  def initialize(nsp, role)
    @name, @surname, @patronymic = nsp.split(' ')
    @role = role
  end

  def add(ncp, role)
    @worker = Employee.new(ncp, role)
  end

  def edit(value, new_value)
    case value
    when 'role' then @worker.role = new_value
    end
  end

  def delete
  end

  def all
    @worker
  end

  def filter(param)
  end   

  class Employee
    attr_accessor :name, :surname, :patrinymic, :role

    def initialize(nsp, role)
      @name, @surname, @patronymic = nsp.split(' ')
      @role = role
    end

  end
end

fst = Unit.new
p fst.add('sdfvsd sdfs sdf', 'etgeg')
p fst.edit('role', 'Backend')
p fst.all