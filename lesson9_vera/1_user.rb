class UserException < RuntimeError
end

class User
  attr_accessor :surname, :name, :patronymic, :email
  VALID_EMAIL_REGEX = (/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  
  
  def initialize (fio, email)
    raise UserException, 'Error: invaild email address' unless email.match(VALID_EMAIL_REGEX)
    # raise UserException, 'Error: only cyrilic' if fio.match(/[A-Z, a-z, 0-9, @_,.\-\s]/)
    @surname, @name, @patronimyc = *fio
    @email = email
    
  end



end

user1 = User.new('Иванов Иван Иванович', 'vano@i.ua')
puts user1

user2 = User.new('Васин Василий Василиевич', 'trtrtr@@@')
puts user2

# user3 = User.new('Super Mario Mr', 'sm_90@keke.pl')
# puts user3