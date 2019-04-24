class UserDecorator < SimpleDelegator
  def birthday_format
    birthday.strftime('%d - %m - %Y')
  end

  def define_email
    private_email ? "Private" : email
  end
end