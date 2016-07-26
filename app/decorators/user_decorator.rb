class UserDecorator < ApplicationDecorator
  delegate :id, :email, :name, :surname

  def full_name
    "#{object.name} #{object.surname}"
  end

  def full_name_with_email
    "#{full_name} (#{object.email})"
  end
end
