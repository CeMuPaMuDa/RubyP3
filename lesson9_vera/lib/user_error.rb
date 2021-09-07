# frozen_string_literal: true

require 'uri'
class UserException < RuntimeError
end

class User
  attr_accessor :surname, :name, :patronymic, :email

  def initialize(fio, email)
    raise UserException, 'Error: invalid email address' unless email.match(URI::MailTo::EMAIL_REGEXP)
    raise UserException, 'Error: only Cyrillic symbols are allowed' unless fio.match(/[а-яА-ЯёЁ0-9]/)

    @surname, @name, @patronymic = *fio.split(' ')
    @email = email
  end
end
