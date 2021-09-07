# frozen_string_literal: true

require_relative 'lib/user_error'

user1 = User.new('Иванов Иван Иванович', 'vano@i.ua')
puts user1, user1.surname, user1.name, user1.patronymic, user1.email

# # e-mail
user2 = User.new('Васин Василий Василиевич', 'trtrtr@@@')
puts user2

# Латыница в имени
# user3 = User.new('Super Mario Mr', 'sm_90@keke.pl')
# puts user3
