class UserDecorator < ApplicationDecorator
  delegate :id, :email, :name, :surname, :username

  def full_name
    "#{object.name} #{object.surname}"
  end

  def full_name_with_email
    "#{full_name} (#{object.email})"
  end

  def full_name_with_username
    "#{full_name} (#{object.username})"
  end

  def posts_count
    object.posts.length
  end
end
